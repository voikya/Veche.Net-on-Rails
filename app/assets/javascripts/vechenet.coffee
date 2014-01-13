class VechenetHomepage
  constructor: ->
    window.pageshift = 0
    $('#title').css 'top', '100px'
    @relocate()
    $('#hidden').html $('#textdivcontents').html()
    $('#buttonframe').css
      opacity: 1
      overflow: 'visible'
    $('#textdivcontents').empty()
    @attachMouseovers()
    @attachClicks()
    $('#textdiv').css(
      position: 'absolute'
      top: '150px'
    ).fadeOut(0)

  relocate: ->
    $('#btn_gov').parent().css { top: '0px',   left: '0px'   }
    $('#btn_nov').parent().css { top: '0px',   left: '380px' }
    $('#btn_och').parent().css { top: '130px', left: '0px'   }
    $('#btn_ala').parent().css { top: '130px', left: '380px' }
    $('#btn_lng').parent().css { top: '260px', left: '0px'   }
    $('#btn_pro').parent().css { top: '260px', left: '380px' }
    $('#btn_q').parent().css { top: '390px', left: '190px' }

  attachMouseovers: ->
    $('div.col1, div.col2').mouseover ->
      unless window.pageshift
        $(@).stop().animate {width: '350px'}, 500
      else
        $(@).not('.current').stop().animate {left: '0px'}, 500
    $('div.col1, div.col2').mouseout ->
      unless window.pageshift
        $(@).stop().animate {width: '300px'}, 500
      else
        $(@).not('.current').stop().animate {left: '-300px'}, 500
  
  attachClicks: ->
    $('div.button img').click ->
      unless window.pageshift
        window.pageshift = 1
        $('#title').animate {top: '20px'}, 750
        thisId = $(@).attr 'id'
        $('div.button img').each (i)->
          if thisId != @.id
            $(@).parent().animate {left: '-3000px'}, 750
          else
            $(@).parent().css({width: '300px', 'z-index': 0}).animate({top: '-100px', left: '0px', opacity: '0.5'}, 750).addClass 'current'
        newcontents = $("#hidden section[title=#{$(@).attr('title')}]").html()
        $('#textdivcontents').html newcontents
        $('#textdiv').css 'height', $("#hidden section[title=#{$(@).attr('title')}]").height() + 30 + 'px'
        $('#textdiv').fadeIn 750
        window.setTimeout ->
          $('div.button').not('.current').each (i)->
            $(@).fadeOut(0).css({position: 'fixed', left: '-300px', width: '350px', top: i * 110 + 50 + 'px', 'z-index': '11'}).fadeIn(400 * (i+1))
        , 1000
      else
        $('div.button').animate {left: '-3000px'}, 750
        $('div.current').removeClass('current').css {opacity: '1', 'z-index': '11'}
        $this = $(@)
        window.setTimeout ->
          $this.parent().addClass('current').css({position: 'absolute', left: '-3000px', top: '50px', 'z-index': '0', width: '300px'}).animate {top: '-100px', left: '0', opacity: '.5'}, 750
          current = $(@).parent();
          $('div.button').not('div.current').each (i)->
            $(@).fadeOut(0).css({position: 'fixed', left: '-300px', width: '350px', top: i * 110 + 50 + 'px'}).fadeIn(400 * (i+1))
        , 1000
        $('#textdiv').animate {height: $("#hidden section[title=#{$(@).attr('title')}]").height() + 30 + 'px'}, 1000
        newcontents = $("#hidden section[title=#{$(@).attr('title')}]").html()
        $('#textdivcontents').fadeOut 500, ->
          $(@).html(newcontents).fadeIn 500
      window.setTimeout ->
        $('div.button').not('.current').each ->
          if $(@).css('opacity') != 1
            $(@).css 'opacity', '1'
      , 3000
    $('#title img').click ->
      window.pageshift = 0
      $('#title').animate {top: '100px'}, 750
      $('div.row1').css({position: 'absolute', width: '300px', left: '-3000px'}).each (i)->
        $(@).animate
          left: if $(@).hasClass('col1') then '0' else '380px'
          top: '0'
          opacity: '1'
        , 1000
        $this = $(@)
        window.setTimeout ->
          $this.css
            left: if $this.hasClass('col1') then '0' else '380px'
            top: '0'
            opacity: '1'
        , 1200
      $('div.row2').css({position: 'absolute', width: '300px', left: '-3000px'}).each (i)->
        $(@).animate
          left: if $(@).hasClass('col1') then '0' else '380px'
          top: '130px'
          opacity: '1'
        , 1000
        $this = $(@)
        window.setTimeout ->
          $this.css
            left: if $this.hasClass('col1') then '0' else '380px'
            top: '130px'
            opacity: '1'
        , 1200
      $('div.row3').css({position: 'absolute', width: '300px', left: '-3000px'}).each (i)->
        $(@).animate
          left: if $(@).hasClass('col1') then '0' else '380px'
          top: '260px'
          opacity: '1'
        , 1000
        $this = $(@)
        window.setTimeout ->
          $this.css
            left: if $this.hasClass('col1') then '0' else '380px'
            top: '260px'
            opacity: '1'
        , 1200
      $('div.row4').css({position: 'absolute', width: '300px', left: '-3000px'}).each (i)->
        $(@).animate
          left: '190px'
          top: '390px'
          opacity: '1'
        , 1200
        $this = $(@)
        window.setTimeout ->
          $this.css
            left: '190px'
            top: '390px'
            opacity: '1'
        , 1200
      $('div.current').removeClass 'current'
      $('#textdiv').fadeOut 750

$(document).ready ->
  window.vechenet_homepage = new VechenetHomepage()
