@VecheSCA ?= {}

class @VecheSCA.API
  @endpoint: null

  @getIPASymbol: (symbol) ->
    request = @_newRequest('GET', "#{@endpoint}/ipa/#{symbol}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        VecheSCA.Event.trigger 'api:phoneme:response', data
        VecheSCA.Event.trigger 'api:finish'
    VecheSCA.Event.trigger 'api:start'
    request.send()

  @getPhoneme: (symbol) ->
    request = @_newRequest('GET', "#{@endpoint}/phonemes/#{symbol}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        VecheSCA.Event.trigger 'api:phoneme:response', data
        VecheSCA.Event.trigger 'api:finish'
    VecheSCA.Event.trigger 'api:start'
    request.send()

  @savePhoneme: (phoneme) ->
    request = @_newRequest('PUT', "#{@endpoint}/phonemes/#{phoneme.symbol}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        VecheSCA.Event.trigger 'api:phoneme:response', data
        @getPhonemes()
    VecheSCA.Event.trigger 'api:start'
    request.send JSON.stringify(phoneme)

  @createPhoneme: (phoneme) ->
    request = @_newRequest('POST', "#{@endpoint}/phonemes")
    request.onload = =>
      if request.status == 200
        data = JSON.parse(request.responseText)
        VecheSCA.Event.trigger 'api:phoneme:response', data
        @getPhonemes()
    VecheSCA.Event.trigger 'api:start'
    request.send JSON.stringify(phoneme)

  @getPhonemes: ->
    request = @_newRequest('GET', "#{@endpoint}/phonemes")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        VecheSCA.Event.trigger 'api:phonemes:response', data
        VecheSCA.Event.trigger 'api:finish'
    VecheSCA.Event.trigger 'api:start'
    request.send()

  @getRules: ->
    request = @_newRequest('GET', "#{@endpoint}/rules")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        VecheSCA.Event.trigger 'api:rules:response', data
        VecheSCA.Event.trigger 'api:finish'
    VecheSCA.Event.trigger 'api:start'
    request.send()

  @getRule: (order) ->
    request = @_newRequest('GET', "#{@endpoint}/rules/#{order}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        VecheSCA.Event.trigger 'api:rule:response', data
        VecheSCA.Event.trigger 'api:finish'
    VecheSCA.Event.trigger 'api:start'
    request.send()

  @createRule: (rule) ->
    request = @_newRequest('POST', "#{@endpoint}/rules")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        VecheSCA.Event.trigger 'api:rules:response', data
        VecheSCA.Event.trigger 'api:finish'
    VecheSCA.Event.trigger 'api:start'
    request.send JSON.stringify(rule)

  @saveRule: (order, rule) ->
    request = @_newRequest('PUT', "#{@endpoint}/rules/#{order}")
    request.onload = =>
      if request.status == 200
        data = JSON.parse(request.responseText)
        VecheSCA.Event.trigger 'api:rule:response', data
        @getRules()
    VecheSCA.Event.trigger 'api:start'
    request.send JSON.stringify(rule)

  @getDecomposedSoundChange: (ruleOrder, changeOrder) ->
    request = @_newRequest('GET', "#{@endpoint}/rules/#{ruleOrder}/changes/#{changeOrder}")
    request.onload = ->
      if request.status == 200
        data = JSON.parse(request.responseText)
        data.ruleOrder = ruleOrder
        data.changeOrder = changeOrder
        VecheSCA.Event.trigger 'api:soundChange:response', data
        VecheSCA.Event.trigger 'api:finish'
    VecheSCA.Event.trigger 'api:start'
    request.send()

  @_newRequest: (method, uri) ->
    request = new XMLHttpRequest()
    request.open(method, uri, true)
    request.setRequestHeader 'Accept', 'application/json'
    request.setRequestHeader 'Content-Type', 'application/json; charset=UTF-8'
    request.setRequestHeader 'X-CSRF-Token', document.getElementsByName("csrf-token")[0]?.getAttribute("content")
    request
