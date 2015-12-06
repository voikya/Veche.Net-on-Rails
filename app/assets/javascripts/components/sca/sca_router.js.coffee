@VecheSCA ?= {}

class @VecheSCA.Router
  @params: {}
  @routablePath: ""
  @basePath: ""

  @init: (@basePath = "") ->
    window.onpopstate = @init.bind(@, @basePath)
    @parseCurrentPath()
    try
      @route '/phonology', (params) ->
        VecheSCA.Event.trigger 'transition:phonology'
      @route '/rules', (params) ->
        VecheSCA.Event.trigger 'transition:rules'
      VecheSCA.Event.trigger 'transition:main'
    catch e
      if e == "route-found"
        return true
      else
        throw e

  @parseCurrentPath: ->
    if window.location.search
      @params = window.location.search.slice(1).split('&').reduce (memo, current) ->
        [key, value] = current.split('=')
        key = decodeURIComponent(key)
        value = decodeURIComponent(value)
        memo[key] = value
        memo
      , {}
    @routablePath = window.location.pathname.replace(@basePath, '')

  @route: (path, callback) ->
    argumentList = [@params]
    pathMatcher = new RegExp('^' + path.replace(/{.*?}/, '[^\/]+') + '$', 'i')
    if @routablePath.match(pathMatcher)
      actualComponents = @routablePath.split('/')
      templateComponents = path.split('/')
      for component, idx in templateComponents
        if component.match(/^{.*}$/)
          argumentList.unshift actualComponents[idx]
      callback.apply(@, argumentList)
      throw "route-found"

  @transition: (path) ->
    fullPath = "#{@basePath}#{path}"
    if window.history and window.location.pathname != fullPath
      window.history.pushState null, null, fullPath
      @init(@basePath)
