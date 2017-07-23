@Lexicon ?= {}

@Lexicon.Entry = React.createClass
  getInitialState: ->
    entry: null

  componentWillMount: ->
    # Set up event listeners
    Lexicon.Event.register 'api:entry:response', @receiveEntry
    Lexicon.Event.register 'api:update:response', @receiveEntry
    Lexicon.Event.register 'api:create:response', @receiveEntry

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
    @props.structure.map (field) =>
      component = Lexicon.Formatters[field.type] || Lexicon.Formatters.MissingFormatter
      value = @state.entry[field.name]
      if value or @props.isEditing
        React.createElement component,
          data:
            name: field.name
            value: value
            meta: field.meta
          slug: @state.entry.slug
          isEditing: @props.isEditing
          ref: field.name
          key: field.name

  renderAdminControls: ->
    if @props.isAdmin
      slug = @state.entry?.slug
      isEditing = @props.isEditing
      saveHandler = @saveEntry
      newHandler = @newEntry
      `<Lexicon.AdminControls slug={slug} isEditing={isEditing} saveHandler={saveHandler} newHandler={newHandler} />`

  saveEntry: ->
    if @props.isAdmin and @props.isEditing
      data = {}
      for field of @refs
        data[field] = @refs[field].state.content
      if @state.entry.slug
        Lexicon.API.updateEntry(@state.entry.slug, data)
      else
        Lexicon.API.createEntry(data)

  receiveEntry: (data) ->
    if @state.entry? and data.slug isnt @state.entry.slug
      Lexicon.Router.transition "/entries/#{data.slug}"
      @clearEntry()
    @setState(entry: data)
    Lexicon.Event.trigger 'edit:off'

  clearEntry: ->
    unless @state.entry.slug
      @setState(entry: null)

  newEntry: ->
    @setState(entry: {})
    Lexicon.Event.trigger 'edit:on'
