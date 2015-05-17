@Lexicon ?= {}

class @Lexicon.API
  @endpoint: null

  @search: (term) ->
    request = @_newRequest('GET', "#{@endpoint}?search=#{encodeURIComponent(term)}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:search:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @advancedSearch: (opts) ->
    params = Utils.serialize(opts)
    request = @_newRequest('GET', "#{@endpoint}?#{params}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:search:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @getEntry: (slug) ->
    request = @_newRequest('GET', "#{@endpoint}/#{slug}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:entry:response', data
        Lexicon.Event.trigger 'api:finish'
    Lexicon.Event.trigger 'api:start'
    request.send()

  @_newRequest: (method, uri) ->
    request = new XMLHttpRequest()
    request.open(method, uri, true)
    request.setRequestHeader 'Accept', 'application/json'
    request
