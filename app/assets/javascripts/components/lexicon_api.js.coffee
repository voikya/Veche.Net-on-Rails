@Lexicon ?= {}

class @Lexicon.API
  @endpoint: null

  @search: (term) ->
    request = new XMLHttpRequest()
    request.open('GET', "#{@endpoint}?search=#{encodeURIComponent(term)}", true)
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:search:response', data
    request.send()

  @advancedSearch: (opts) ->
    request = new XMLHttpRequest()
    params = ("#{k}=#{encodeURIComponent(opts[k])}" for k of opts).join("&")
    request.open('GET', "#{@endpoint}?#{params}", true)
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:search:response', data
    request.send()

  @getEntry: (slug) ->
    request = new XMLHttpRequest()
    request.open('GET', "#{@endpoint}/#{slug}", true)
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        Lexicon.Event.trigger 'api:entry:response', data
    request.send()
