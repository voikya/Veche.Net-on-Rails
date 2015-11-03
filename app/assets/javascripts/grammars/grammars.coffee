$(document).ready ->
  if $('body').hasClass 'grammar'
    $('a.footnote').click (evt) ->
      $('p.footnote.highlight').removeClass 'highlight'
      $($(evt.target).attr('href')).addClass 'highlight'
