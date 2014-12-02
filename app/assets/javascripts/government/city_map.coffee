# This is pretty much just a CoffeeScript class wrapped around
# the original very old JavaScript code. This should be refactored
# at some point to not look like turn-of-the-century code.
class GovernmentCityMap
  constructor: ->
    @initInfobox()
    @attachMouseovers()
    @attachClicks()

  initInfobox: ->
    $('#cityInfobox').fadeOut(0).draggable()

  attachMouseovers: ->
    $('area').on 'mouseover', ->
      cityname = $(this).attr('id')
      dataSource = $(this).attr('href')
      position = $(this).attr('coords').split(',')
      position[0] = parseInt(position[0]) - 7
      position[1] = parseInt(position[1]) - 30
      $('#cityLabel').css
        left: position[0] + 'px'
        top: position[1] + 'px'
        display: 'block'
      $('#labelText').html("<p>#{cityname}</p>")
      $('#cityMetadata').html(dataSource)
    $('#cityLabel').on 'mouseout', ->
      $(this).hide()

  attachClicks: ->
    $('#cityLabel').on 'click', ->
      dataSource = $('#cityMetadata').html()
      $('#cityInfoboxRegion').html $("div.citydata[data-ref='#{dataSource}']").html()
      $('#cityInfobox').fadeIn(500)
    $('#mapBackground').on 'click', ->
      if $('#cityInfobox').css('opacity') > 0
        $('#cityInfobox').fadeOut(500)

window.classes ?= {}
window.classes.GovernmentCityMap = GovernmentCityMap
