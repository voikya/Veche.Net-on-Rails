$(document).ready ->
  if $('body').hasClass 'ochets'
    $("a#toggleMore").click ->
      $("#sandhiDiv").hide()
      $("#otherContent").show()
    $("a#toggleLess").click ->
      $("#otherContent").hide()
      $("#sandhiDiv").show()
