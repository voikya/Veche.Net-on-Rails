@Lexicon ?= {}

@Lexicon.Entry = React.createClass
  getInitialState: ->
    entry: []

  componentWillMount: ->
    # Set up event listeners
    Lexicon.Event.register 'api:entry:response', @receiveEntry

  render: ->
    `<div id="entry-view">
      {this.renderEntries()}
     </div>
    `

  renderEntries: ->
    @state.entry.map (field) =>
      component = Lexicon.Formatters[field.type] || Lexicon.Formatters.MissingFormatter
      React.createElement component, data: field

  receiveEntry: (data) ->
    @setState(entry: data)
