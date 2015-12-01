@VecheSCA ?= {}

@VecheSCA.SCASymbol = React.createClass
  render: ->
    glyph = @props.glyph
    className = Utils.classSet("symbol", "combining" if @props.combining)
    if @props.combining
      fetch = @applyFeature
    else
      fetch = @fetchPhoneme
    `<span className={className} onClick={fetch}>{glyph}</span>`

  fetchPhoneme: (evt) ->
    evt.preventDefault()
    if @props.native
      VecheSCA.API.getPhoneme(@props.glyph)
    else
      VecheSCA.API.getIPASymbol(@props.glyph)

  applyFeature: (evt) ->
    evt.preventDefault()
    VecheSCA.Event.trigger 'feature:apply',
      glyph: @props.glyph
      position: @props.position
      feature: @props.feature
