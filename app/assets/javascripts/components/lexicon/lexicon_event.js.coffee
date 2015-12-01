@Lexicon ?= {}

class @Lexicon.Event
  @events = {}

  @register: (event, callback) ->
    if @events[event]
      @events[event].push callback
    else
      @events[event] = [callback]

  @trigger: (event, parameters...) ->
    callback.apply(null, parameters) for callback in (@events[event] or [])
