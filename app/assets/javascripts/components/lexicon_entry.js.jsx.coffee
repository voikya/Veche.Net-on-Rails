@Lexicon ?= {}

@Lexicon.Entry = React.createClass
  getInitialState: ->
    entry: null

  componentWillMount: ->
    # Set up event listeners
    Lexicon.Event.register 'api:entry:response', @receiveEntry
    Lexicon.Event.register 'api:edit:response', @receiveEdit

  render: ->
    if @state.entry?
      `<div id="entry-view">
        {this.renderAdminControls()}
        {this.renderFields()}
       </div>
      `
    else
      language = @props.language
      entryCount = @props.entryCount
      `<div id="entry-view">
         {this.renderAdminControls()}
         <p className="introtext">Enter a search term in the box above, or select a letter to browse.</p>
         <p className="introtext">The {language} lexicon currently contains {entryCount} entries.</p>
       </div>
      `

  renderFields: ->
    @state.entry.fields.map (field) =>
      component = Lexicon.Formatters[field.type] || Lexicon.Formatters.MissingFormatter
      React.createElement component, {data: field, isEditing: @props.isEditing}

  renderAdminControls: ->
    if @props.isAdmin
      slug = @state.entry?.slug
      isEditing = @props.isEditing
      `<Lexicon.AdminControls slug={slug} isEditing={isEditing} />`

  receiveEntry: (data) ->
    @setState(entry: data)
    Lexicon.Event.trigger 'edit:off'

  receiveEdit: (data) ->
    # Ensure edit mode is enabled before updating the current entry,
    # since otherwise the view may attempt to render empty or otherwise
    # unexpected data.
    Lexicon.Event.trigger 'edit:on'
    @setState(entry: data)
