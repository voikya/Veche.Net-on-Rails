class Lexicon
  searchEndpoint: "/lexicon/{language}.json"
  entryEndpoint: "/lexicon/{language}/{word}.json"
  updateEndpoint: "/lexicon/{language}/{word}"
  createEndpoint: "/lexicon/{language}"

  constructor: (opts) ->
    @language = opts.language
    @searchEndpoint = @searchEndpoint.replace "{language}", @language
    @entryEndpoint = @entryEndpoint.replace "{language}", @language
    @updateEndpoint = @updateEndpoint.replace "{language}", @language
    @createEndpoint = @createEndpoint.replace "{language}", @language
    @lexemeField = opts.lexemeField
    @initAdvancedSearch()
    @initSearchSubmit()
    @initEntryLinks()
    @initAlphabetLinks()
    @initEdit()

  # Attach toggles associated with 'Advanced Search' link
  initAdvancedSearch: ->
    $('a.advanced').click ->
      # Body class affects header display
      $('body').toggleClass 'advanced-search-open'
      # Enable/disable basic search field
      $('#search input, #search select').each ->
        $(@).prop 'disabled', !$(@).prop('disabled')

  # Attach Ajax bindings to search submit
  initSearchSubmit: ->
    $('#searchform').submit (evt) =>
      evt.preventDefault()
      if $('body').hasClass('advanced-search-open')
        # If an advanced search was performed, check which fields were filled
        # out and generate a data object.
        data = {}
        $('#searchform input[type=text], #searchform input[type=checkbox]:checked').not('#searchbox').each ->
          $field = $(@)
          if $field.val()
            # If the field has a value, store it
            name = $field.attr('name')
            data[name] = $field.val()
            # All text fields have an associated opts select
            if ($opts = $("select[name=#{name}_opts")).length
              # Convert select options into URL wildcards. This isn't strictly
              # necessary (the server will do it too), but it makes the URLs
              # look a lot nicer.
              if $opts.val() == "begins_with"
                data[name] = data[name] + '*'
              else if $opts.val() == "ends_with"
                data[name] = '*' + data[name]
        @search(data)
      else
        # Perform a basic search
        @search(search: $("#searchbox").val())

  # Attach Ajax bindings to alphabet header links
  initAlphabetLinks: ->
    $('nav .alphabet a').click (evt) =>
      evt.preventDefault()
      letter = $(evt.target).text()
      params = {}
      params[@lexemeField] = "#{letter}*"
      @search(params)

  # Attach Ajax bindings to links to individual entries
  initEntryLinks: ->
    $('main').on 'click', 'a:not(.root)', (evt) =>
      unless $('#admin-controls').has($(evt.target)).length
        evt.preventDefault()
        word = $(evt.target).text()
        endpoint = @entryEndpoint.replace("{word}", word)
        $.ajax(
          url: endpoint
        ).done((res) =>
          # Update the history/URL state
          window.history.pushState null, null, endpoint.replace(".json", "")
          # Load the entry
          $entryView = $('#entry-view')
          $entryView.empty()
          for key, content of res
            $entryView.append content
        )
    $('main').on 'click', 'a.root', (evt) =>
      evt.preventDefault()
      root = $(evt.target).text()
      @search(root: root)

  # Perform a search request
  search: (data) ->
    $.ajax(
      url: @searchEndpoint,
      data: data
    ).done((res) =>
      # Update the history/URL state
      window.history.pushState null, null, "#{@searchEndpoint}?#{@serialize data}".replace(".json", "")
      # Clear the current results
      $searchResults = $("#search-results")
      $searchResults.empty()
      # Show the match count
      $matches = $("<p>#{res.total_matches} #{if res.total_matches == 1 then "match" else "matches"} returned.</p>")
      $searchResults.append $matches
      # List the matches
      $results = $("<ul></ul>")
      for r in res.results
        formatted = r.replace /^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>'
        $results.append $("<li><a href=\"/lexicon/#{@language}/#{r}\">#{formatted}</a></li>")
      $searchResults.append $results
      # If a basic search was performed, also display partial matches
      if "search" of data and res.partial_matches > 0
        $partial = $("<p>In addition, the following #{res.partial_matches} #{if res.partial_matches == 1 then "record" else "records"} partially matched your search:</p>")
        $searchResults.append $partial

        $results = $("<ul></ul>")
        for r in res.partial_results
          formatted = r.replace /^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>'
          $results.append $("<li><a href=\"/lexicon/#{@language}/#{r}\">#{formatted}</a></li>")
        $searchResults.append $results
    )

  # Helper to URI-encode a non-nested object. Useful to generate pushState URLs.
  serialize: (object) ->
    query = []
    for own key, value of object
      query.push "#{encodeURIComponent key}=#{encodeURIComponent value}"
    query.join "&"

  # Initialize edit behaviors
  initEdit: ->
    $("#entry-view .submit").click =>
      data = @getFormData()
      word = data.slug
      if word
        endpoint = @updateEndpoint.replace("{word}", word)
        method = "PUT"
      else
        endpoint = @createEndpoint
        method = "POST"
      $.ajax(
        url: endpoint
        data: data
        method: method
      ).done((res) =>
        window.location.href = endpoint
      )
    $("#entry-view .editable.definition, #entry-view .editable.cross-references").focus ->
      if $(@).html() == ""
        $(@).html "<ol><li></li></ol>"

  # Get form data in edit mode
  getFormData: ->
    data = {}
    formatter = @format
    $("#entry-view .editable").each ->
      klass = $(@).attr('class').replace(/\s?editable\s?/, '')
                                .replace(/-/g, '_')
      switch klass
        when 'word', 'transliteration', 'root', 'pronunciation', 'part_of_speech', 'etymology', 'cognates'
          data[klass] = $(@).text()
        when 'definition'
          data[klass] = $(@).find('li')
                            .toArray()
                            .reduce((memo, cur) ->
                              memo.push("[[#{formatter(cur.innerHTML)}]]")
                              memo
                            , [])
                            .join("\n")
        when 'important_forms'
          data[klass] = $(@).html()
                            .split("<br>")
                            .reduce((memo, cur) ->
                              memo.push("[[#{formatter(cur)}]]")
                              memo
                            , [])
                            .join("\n")
        when 'idioms'
          data[klass] = $(@).find('p')
                            .toArray()
                            .reduce((memo, cur) ->
                              memo.push(formatter(cur.innerHTML))
                              memo
                            , [])
                            .join("\n")
        when 'notes'
          $(@).find('legend').remove()
          data[klass] = formatter $(@).find('fieldset').html()
        when 'cross_references'
          data[klass] = $(@).find('li')
                            .toArray()
                            .reduce((memo, cur) ->
                              memo.push $(cur).text()
                              memo
                            , [])
                              .join(",")
        when 'morphology_table'
          mt = {}
          $(@).find('tr').each ->
            key = $(@).find('th').text()
            val = $(@).find('td').text()
            mt[key] = val if val
          data[klass] = mt if Object.keys(mt).length > 0
        else
          alert("Unhandled #{klass}")
    data.slug = $("input#slug").val()
    for k, v of data
      delete data[k] unless v
      delete data[k] if data[k] == "[[]]"
    data

  # Format data
  format: (str) ->
    return unless str?
    str.replace(/<i>/g, "{{")
       .replace(/<\/i>/g, "}}")
       .replace(/<br>/g, "\n")
       .replace(/<span class="label">([^:]+):<\/span>\s*/g, "$1|")
       .replace(/\s*<span class="transliteration">([^<]+)<\/span>\s*/g, " {{$1}}")

window.classes ?= {}
window.classes.Lexicon = Lexicon
