@Lexicon ?= {}

class @Lexicon.Router
  @params: {}
  @routablePath: ""
  @basePath: ""

  @init: (@basePath = "") ->
    window.onpopstate = @init.bind(@, @basePath)
    @parseCurrentPath()
    try
      @route '/entries/{slug}', (slug, params) ->
        Lexicon.API.getEntry(slug)
      @route '/entries', (params) ->
        Lexicon.API.advancedSearch(params)
      @route '/new', (params) ->
        Lexicon.API.newEntry()
      @route '/entries/{slug}/edit', (slug, params) ->
        Lexicon.Event.trigger 'edit:on'
        Lexicon.API.editEntry(slug)
      false
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
