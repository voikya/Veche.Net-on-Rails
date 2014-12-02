class VechenetHomepage
  constructor: ->
    @$title = $('#title')
    @nav = @loadNavigationElements()
    @setCurrentView()
    @isShifted = !!@currentView
    @$title.on 'click', @clearCurrentView.bind(@)

  loadNavigationElements: ->
    $navField = $('nav.buttonframe')
    navigationElements = []
    self = this
    idx = 0
    $('article').each ->
      $article = $(@)
      navigationElements.push(new NavigationElement($article, idx, $navField, self))
      $article.addClass('hidden')
      idx += 1
    navigationElements

  setCurrentView: ->
    @currentView = window.location.hash?.substring(1)
    if @currentView
      @$title.addClass 'shifted'
      @isShifted = true
    else
      @$title.removeClass 'shifted'
    wasFound = false
    for nav in @nav
      isCurrent = (@currentView == nav.id())
      wasFound = (wasFound or isCurrent)
      nav.setState (@currentView == nav.id()), wasFound

  clearCurrentView: ->
    window.location.hash = ''
    if @isShifted
      @isShifted = false
      @setCurrentView()

class NavigationElement
  constructor: (@$target, @index, @$buttonLocation, @page) ->
    @$wrapper = $('<div class="button-wrapper"></div>').appendTo(@$buttonLocation)
    @$button = $('<div class="button"></div>').appendTo(@$wrapper)
    $('<img/>').attr('src', @$target.attr('data-nav-button'))
               .attr('title', @$target.attr('data-title'))
               .appendTo(@$button)
    @current = false
    @$button.on 'mouseover', @mouseover.bind(@)
    @$button.on 'mouseout', @mouseout.bind(@)
    @$button.on 'click', @click.bind(@)

  id: ->
    @$target.attr('id')

  mouseover: (event) ->
    if @page.isShifted
      @$wrapper.animate left: '-10px', 500
    else
      @$button.animate width: '350px', 500

  mouseout: (event) ->
    if @page.isShifted
      @$wrapper.animate left: '-310px', 500
    else
      @$button.animate width: '300px', 500

  click: (event) ->
    id = @$target.attr('id')
    @$target.removeAttr('id')
    window.location.hash = "##{id}"
    @$target.attr('id', id)
    @page.setCurrentView()

  setState: (isCurrent, afterCurrentElement) ->
    oldState = @current
    @current = isCurrent
    if @page.isShifted
      @shift(afterCurrentElement)
    else
      @reset()
    if @current == oldState
      return
    else
      if @current
        setTimeout( =>
          @$target.fadeIn 500, => @$target.removeClass 'hidden'
        , 500)
      else
        @$target.fadeOut 500, => @$target.addClass 'hidden'

  shift: (afterCurrentElement)->
    topOffset = ((@index - (if afterCurrentElement then 1 else 0)) * 110 + 50)
    @$wrapper.animate(left: '-3000px', 500, =>
      @$wrapper.fadeOut(0, =>
        @$button.css('width', '350px')
        @$wrapper.css(position: 'fixed', left: '-310px', top: "#{topOffset}px", 'z-index': 11)
        unless @current
          @$wrapper.fadeIn(400 * (@index + 1))
      )
    )

  reset: ->
    @$wrapper.fadeOut(400, =>
      @$button.css('width', '300px')
      @$wrapper.css(left: '-3000px', top: 0, position: 'relative')
               .fadeIn(0)
               .css(display: 'inline-block')
               .animate(left: 0, 500)
    )

window.classes ?= {}
window.classes.VechenetHomepage = VechenetHomepage
