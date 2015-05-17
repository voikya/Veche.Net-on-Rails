@Lexicon ?= {}

@Lexicon.Entry = React.createClass
  getInitialState: ->
    entry: null

  componentWillMount: ->
    # Set up event listeners
    Lexicon.Event.register 'api:entry:response', @receiveEntry

  render: ->
    if @state.entry?
      `<div id="entry-view">
        {this.renderEntries()}
       </div>
      `
    else
      language = @props.language
      entryCount = @props.entryCount
      `<div id="entry-view">
         <p className="introtext">Enter a search term in the box above, or select a letter to browse.</p>
         <p className="introtext">The {language} lexicon currently contains {entryCount} entries.</p>
       </div>
      `

  renderEntries: ->
    @state.entry.map (field) =>
      component = Lexicon.Formatters[field.type] || Lexicon.Formatters.MissingFormatter
      React.createElement component, data: field

  receiveEntry: (data) ->
    @setState(entry: data)
