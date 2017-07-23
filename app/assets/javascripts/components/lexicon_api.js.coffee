@Lexicon ?= {}

class @Lexicon.API
  @endpoint: null

  @search: (term) ->
    request = @jsonRequest('GET', "#{@endpoint}/entries?search=#{encodeURIComponent(term)}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:search:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @advancedSearch: (opts) ->
    params = Utils.serialize(opts)
    request = @jsonRequest('GET', "#{@endpoint}/entries?#{params}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:search:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @getEntry: (slug) ->
    request = @jsonRequest('GET', "#{@endpoint}/entries/#{slug}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:entry:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @getMorphology: (slug) ->
    request = @htmlRequest('GET', "#{@endpoint}/entries/#{slug}/morphology")
    request.onload = ->
      if request.status == 200
        Lexicon.Event.trigger 'api:morphology:response', request.responseText
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @createEntry: (data) ->
    request = @jsonRequest('POST', "#{@endpoint}/entries")
    request.onload = ->
      if request.status == 200
        responseData = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:create:response', responseData
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send JSON.stringify(data)

  @updateEntry: (slug, data) ->
    request = @jsonRequest('PUT', "#{@endpoint}/entries/#{slug}")
    request.onload = ->
      if request.status == 200
        responseData = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:update:response', responseData
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send JSON.stringify(data)

  @jsonRequest: (method, uri) ->
    request = @_newRequest(method, uri)
    request.setRequestHeader 'Accept', 'application/json'
    request

  @htmlRequest: (method, uri) ->
    request = @_newRequest(method, uri)
    request.setRequestHeader 'Accept', 'text/html'
    request

  @_newRequest: (method, uri) ->
    request = new XMLHttpRequest()
    request.open(method, uri, true)
    request.setRequestHeader 'Content-Type', 'application/json; charset=UTF-8'
    request.setRequestHeader 'X-CSRF-Token', document.getElementsByName("csrf-token")[0]?.getAttribute("content")
    request
