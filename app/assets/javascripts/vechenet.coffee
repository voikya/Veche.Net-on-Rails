class VechenetHomepage
  constructor: ->
    @currentArticle = null
    @$navUp = $('a.nav-up')
    @$navDown = $('a.nav-down')

    $('article#languages .article-wrapper').on 'click', @setArticle.bind(@, 'languages')
    $('article#programming .article-wrapper').on 'click', @setArticle.bind(@, 'programming')
    $('article#about .article-wrapper').on 'click', @setArticle.bind(@, 'about')
    $('.article-contents-image, h1').on 'click', @unsetArticle.bind(@)
    $('.article-contents-inner').scroll @scroll.bind(@)
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
