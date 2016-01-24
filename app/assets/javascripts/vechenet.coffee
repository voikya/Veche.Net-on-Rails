class VechenetHomepage
  constructor: ->
    @currentArticle = null
    @$navUp = $('a.nav-up')
    @$navDown = $('a.nav-down')
    @scrollTimer = null
    @scrollEvent = null

    $('article#languages .article-wrapper').on 'click', @setArticle.bind(@, 'languages')
    $('article#programming .article-wrapper').on 'click', @setArticle.bind(@, 'programming')
    $('article#about .article-wrapper').on 'click', @setArticle.bind(@, 'about')
    $('.article-contents-image, h1').on 'click', @unsetArticle.bind(@)
    $('.article-contents-inner').scroll @throttledScroll.bind(@)
    @$navUp.on 'click', @goToPreviousSection.bind(@)
    @$navDown.on 'click', @goToNextSection.bind(@)

  setArticle: (id, evt) ->
    $('body').addClass "#{id}-selected"
    $("##{id}").addClass 'flipped'
    @currentArticle = id
    @scroll($.Event 'scroll', target: $("##{id} .article-contents-inner")[0])

  unsetArticle: (evt) ->
    $('body').removeClass 'languages-selected programming-selected about-selected'
    $('article').removeClass 'flipped'
    @currentArticle = null

  getCurrentSection: ->
    if @currentArticle
      $block = $("##{@currentArticle} .article-contents-inner")
      for section in $block.find('section')
        if !$current or $(section).position().top < $block.height() / 2
          $current = $(section)
        else
          break
      $current.attr('data-section')

  throttledScroll: (evt) ->
    # Store the most recent scroll event
    @scrollEvent = evt
    unless @scrollTimer?
      # Throttle scroll event handler to 100ms
      @scrollTimer = setTimeout((=>
        @scrollTimer = null
        @scroll(@scrollEvent)
      ), 100)

  scroll: (evt) ->
    $block = $(evt.target)
    scrollHeight = $block.scrollTop()
    if scrollHeight is 0
      @$navUp.addClass 'disabled'
    else
      @$navUp.removeClass 'disabled'
    if scrollHeight is $block[0].scrollHeight - $block.height()
      @$navDown.addClass 'disabled'
    else
      @$navDown.removeClass 'disabled'
    current = @getCurrentSection()
    $block.closest('.article-contents').attr('data-current-section', current)

  goToPreviousSection: ->
    previousSection = $("section[data-section=#{@getCurrentSection()}]").prev("section")
    $contents = $("##{@currentArticle} .article-contents-inner")
    if previousSection.length
      scrollHeight = $contents.scrollTop()
      prevSectionOffset = previousSection.position().top # Should be negative
      $contents.scrollTop(scrollHeight + prevSectionOffset)
    else
      $contents.scrollTop 0
    @scroll($.Event 'scroll', target: $contents[0])

  goToNextSection: ->
    nextSection = $("section[data-section=#{@getCurrentSection()}]").next("section")
    $contents = $("##{@currentArticle} .article-contents-inner")
    if nextSection.length
      scrollHeight = $contents.scrollTop()
      nextSectionOffset = nextSection.position().top
      $contents.scrollTop(scrollHeight + nextSectionOffset)
    else
      $contents.scrollTop($contents[0].scrollHeight)
    @scroll($.Event 'scroll', target: $contents[0])

window.classes ?= {}
window.classes.VechenetHomepage = VechenetHomepage
