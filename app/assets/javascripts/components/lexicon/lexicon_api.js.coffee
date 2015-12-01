@Lexicon ?= {}

class @Lexicon.API
  @endpoint: null

  @search: (term) ->
    request = @_newRequest('GET', "#{@endpoint}/entries?search=#{encodeURIComponent(term)}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:search:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @advancedSearch: (opts) ->
    params = Utils.serialize(opts)
    request = @_newRequest('GET', "#{@endpoint}/entries?#{params}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:search:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @getEntry: (slug) ->
    request = @_newRequest('GET', "#{@endpoint}/entries/#{slug}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:entry:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @newEntry: ->
    request = @_newRequest('GET', "#{@endpoint}/new")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:new:response', data
        Lexicon.Event.trigger 'api:finish'
      else if request.status == 401
        window.location.replace request.getResponseHeader('Location')
    Lexicon.Event.trigger 'api:start'
    request.send()

  @editEntry: (slug) ->
    request = @_newRequest('GET', "#{@endpoint}/entries/#{slug}/edit")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:edit:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @createEntry: (data) ->
    request = @_newRequest('POST', "#{@endpoint}/entries")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:create:response', data
        Lexicon.Event.trigger 'api:finish'
        Lexicon.Router.transition "/entries/#{data.slug}"
    Lexicon.Event.trigger 'api:start'
    request.send JSON.stringify(data)

  @updateEntry: (slug, data) ->
    request = @_newRequest('PUT', "#{@endpoint}/entries/#{slug}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:update:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send JSON.stringify(data)

  @_newRequest: (method, uri) ->
    request = new XMLHttpRequest()
    request.open(method, uri, true)
    request.setRequestHeader 'Accept', 'application/json'
    request.setRequestHeader 'Content-Type', 'application/json; charset=UTF-8'
    request.setRequestHeader 'X-CSRF-Token', document.getElementsByName("csrf-token")[0]?.getAttribute("content")
    request
