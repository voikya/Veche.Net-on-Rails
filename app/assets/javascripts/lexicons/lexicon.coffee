class Lexicon
  constructor: ->
    @initAdvancedSearch()

  initAdvancedSearch: ->
    $('a.advanced').click ->
      $('body').toggleClass 'advanced-search-open'
      $searchbox = $('#searchbox')
      $searchbox.prop 'disabled', !$searchbox.prop('disabled')

window.classes ?= {}
window.classes.Lexicon = Lexicon
