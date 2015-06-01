@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Morphology = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    if editable and @state.content instanceof Object
      init = @initializeWithEmptyData
      `<div className={className} onClick={init}>{this.renderMorphologyTable()}</div>`
    else
      content = __html: @state.content
      `<div className={className} dangerouslySetInnerHTML={content} />`

  renderMorphologyTable: ->
    unless Utils.objectIsEmpty(@state.content)
      `<table className='editable-table'>{this.renderMorphologyFields()}</table>`

  renderMorphologyFields: ->
    for key, value of @state.content
      unless key == '_visible'
        update = @update.bind(@, key)
        `<tr>
           <th>{key}</th>
           <td contentEditable={true} onBlur={update}>{value}</td>
         </tr>
        `

  initializeWithEmptyData: ->
    if Utils.objectIsEmpty(@state.content)
      content = @state.content
      content._visible = true
      @setState(content: content)

  update: (field, evt) ->
    content = @state.content
    delete content._visible
    value = evt.target.textContent
    if value.length
      content[field] = value
    else
      content[field] = null
    @setState(content: content)
