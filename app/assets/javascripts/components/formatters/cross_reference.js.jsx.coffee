@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.CrossReference = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    if @props.isEditing
      @renderForEditing()
    else
      @renderForReading()

  renderForReading: ->
    name = @props.data.name
    xrefs = @state.content.map (xref, idx) =>
      slug = xref.slug.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')
      click = @fetchEntry.bind(@, xref.slug)
      path = "/entries/#{xref.slug}"
      summary = "\"#{xref.summary}\"" if xref.summary
      `<li key={xref.slug}>
         <Lexicon.Link path={path} handler={click} content={slug} />
         &nbsp;
         {summary}
       </li>
      `
    `<div className={name}>
       <ul>{xrefs}</ul>
     </div>
    `

  renderForEditing: ->
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless @state.content)
    if @state.content
      xrefs = @state.content.map (xref, idx) =>
        update = @update.bind(@, idx)
        keydown = @handleKeydown.bind(@, idx)
        `<li key={idx}>
           <input type="text" value={xref.slug} onChange={update} onKeyDown={keydown} />
         </li>
        `
      `<div className={className}>
         {xrefs}
       </div>
      `
    else
      placeholder = Utils.titleize(@props.data.name)
      initWithEmptyObject = @initWithEmptyObject
      `<div className={className}>
         <input type="text" placeholder={placeholder} onClick={initWithEmptyObject} />
       </div>
      `

  emptyObject: ->
    slug: ""

  initWithEmptyObject: ->
    @setState(content: [@emptyObject()])

  handleKeydown: (idx, evt) ->
    switch evt.which
      when 13 # Enter
        evt.preventDefault()
        content = @state.content
        content.splice(idx + 1, 0, @emptyObject())
        @setState(content: content)
      when 8 # Backspace
        if evt.target.value.length == 0
          evt.preventDefault()
          content = @state.content
          content.splice(idx, 1)
          content = null unless content.length
          @setState(content: content)

  update: (idx, evt) ->
    newContent = @state.content
    newContent[idx].slug = evt.target.value.trim()
    if newContent[idx].slug.length == 0
      newContent.splice(idx, 1)
    newContent = null unless newContent.length
    @setState(content: newContent)

  fetchEntry: (slug) ->
    Lexicon.API.getEntry(slug)
