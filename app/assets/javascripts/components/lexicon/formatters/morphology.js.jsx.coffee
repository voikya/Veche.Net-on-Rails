@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Morphology = React.createClass
  componentWillMount: ->
    content = (if Utils.objectIsEmpty(@props.data.value) then null else @props.data.value)
    template = Object.keys(@props.data.value).reduce ((m,c) -> m[c] = null; m), {}
    @setState(content: content, template: template, visible: !!content)

  componentWillReceiveProps: (nextProps) ->
    v = (if Utils.objectIsEmpty(nextProps.data.value) then null else nextProps.data.value)
    @setState(content: v, visible: !!v)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    if editable
      init = => @setState(visible: true)
      `<div className={className} onClick={init}>{this.renderMorphologyTable()}</div>`
    else
      content = __html: @state.content
      `<div className={className} dangerouslySetInnerHTML={content} />`

  renderMorphologyTable: ->
    if @state.visible
      `<table className='editable-table'><tbody>{this.renderMorphologyFields()}</tbody></table>`

  renderMorphologyFields: ->
    for key, value of (@state.content ? @state.template)
      update = @update.bind(@, key)
      `<tr>
         <th>{key}</th>
         <td contentEditable={true} onBlur={update}>{value}</td>
       </tr>
      `

  update: (field, evt) ->
    content = @state.content ? @state.template
    value = evt.target.textContent
    console.log value
    if value.length
      content[field] = value
    else
      content[field] = null
    if Utils.objectIsEmpty(content)
      @setState(content: null)
    else
      @setState(content: content)
