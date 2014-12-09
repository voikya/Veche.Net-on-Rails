class Lexicon
  searchEndpoint: "/lexicon/{language}.json"
  entryEndpoint: "/lexicon/{language}/{word}.json"

  constructor: (@language) ->
    @searchEndpoint = @searchEndpoint.replace "{language}", @language
    @entryEndpoint = @entryEndpoint.replace "{language}", @language
    @initAdvancedSearch()
    @initSearchSubmit()
    @initEntryLinks()
    @initAlphabetLinks()

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
      @search(word: "#{letter}*")

  # Attach Ajax bindings to links to individual entries
  initEntryLinks: ->
    $('main').on 'click', 'a', (evt) =>
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

  # Perform a search request
  search: (data) ->
    serialized = @serialize(data)
    $.ajax(
      url: @searchEndpoint,
      data: data
    ).done((res) =>
      # Update the history/URL state
      window.history.pushState null, null, "#{@searchEndpoint}?#{serialized}".replace(".json", "")
      # Clear the current results
      $searchResults = $("#search-results")
      $searchResults.empty()
      # Show the match count
      $matches = $("<p>#{res.total_matches} #{if res.total_matches == 1 then "match" else "matches"} returned.</p>")
      $searchResults.append $matches
      # List the matches
      $results = $("<ul></ul>")
      for r in res.results
        $results.append $("<li><a href=\"/lexicon/#{@language}/#{r}?#{serialized}\">#{r}</a></li>")
      $searchResults.append $results
      # If a basic search was performed, also display partial matches
      if "search" of data and res.partial_matches > 0
        $partial = $("<p>In addition, the following #{res.partial_matches} #{if res.partial_matches == 1 then "record" else "records"} partially matched your search:</p>")
        $searchResults.append $partial

        $results = $("<ul></ul>")
        for r in res.partial_results
          $results.append $("<li><a href=\"/lexicon/#{@language}/#{r}?#{serialized}\">#{r}</a></li>")
        $searchResults.append $results
    )

  # Helper to URI-encode a non-nested object. Useful to generate pushState URLs.
  serialize: (object) ->
    query = []
    for own key, value of object
      query.push "#{encodeURIComponent key}=#{encodeURIComponent value}"
    query.join "&"

window.classes ?= {}
window.classes.Lexicon = Lexicon
