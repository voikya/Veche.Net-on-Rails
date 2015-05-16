@Lexicon ?= {}

@Lexicon.Entry = React.createClass
  getInitialState: ->
    entry: {}

  componentWillMount: ->
    # Set up event listeners
    Lexicon.Event.register 'api:entry:response', @receiveEntry

  render: ->
    `<div id="entry-view" dangerouslySetInnerHTML={this.renderEntries()}>
     </div>
    `

  renderEntries: ->
    entry = @state.entry
    {__html: (entry[field] for field of entry).join('')}

  receiveEntry: (data) ->
    @setState(entry: data)
