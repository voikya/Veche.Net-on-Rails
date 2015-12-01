@VecheSCA ?= {}

@VecheSCA.SCAPhonologyTable = React.createClass
  componentWillMount: ->
    VecheSCA.API.getPhonemes()
    VecheSCA.Event.register 'api:phonemes:response', @setPhonology

  render: ->
    phonologyTable = @renderPhonologyTable()
    `<div id="phonology-table">{phonologyTable}</div>`

  renderPhonologyTable: ->
    if @state and @state.phonology
      phonologyRows = @renderPhonologyRows()
      `<table>{phonologyRows}</table>`
    else
      `<p>Phonology Table</p>`

  renderPhonologyRows: ->
    rows = []
    for type in ['plosives', 'fricatives', 'affricates', 'nasals', 'liquids', 'glides', 'vowels', 'diphthongs', 'other']
      if @state.phonology[type].length
        symbols = @state.phonology[type].map (symbol) ->
          `<VecheSCA.SCASymbol glyph={symbol} native="true" />`
        rows.push(`<tr><th>{type.titleize()}</th><td>{symbols}</td></tr>`)
    rows

  setPhonology: (data) ->
    @setState(phonology: data)
