@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Morphology = React.createClass
  componentWillMount: ->
    Lexicon.Event.register 'api:morphology:response', (data) => @setState(html: data)
    @setState(content: @props.data.value)
    Lexicon.API.getMorphology(@props.slug)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: @props.data.value)

  render: ->
    if @props.isEditing
      @renderForEditing()
    else
      @renderForReading()

  renderForReading: ->
    name = @props.data.name
    html = { __html: @state.html }
    if html
      `<div className={name} dangerouslySetInnerHTML={html} />`
    else
      `<div className={name}>
         Loading...
       </div>
      `

  renderForEditing: ->
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless @state.content)
    if @state.content
      fieldRows = @renderMorphologyFields()
      `<div className={className}>
         <table className='editable-table'>
           <tbody>{fieldRows}</tbody>
         </table>
       </div>
      `
    else
      placeholder = Utils.titleize(@props.data.name)
      initWithEmptyObject = @initWithEmptyObject
      `<div className={className}>
         <input type="text" placeholder={placeholder} onClick={initWithEmptyObject} />
       </div>
      `

  renderMorphologyFields: ->
    @props.data.meta.map (field) =>
      update = @update.bind(@, field.key)
      value = @state.content[field.key] ? ""
      `<tr key={field.key}>
         <th>{field.key}</th>
         <td><input type="text" value={value} onChange={update} /></td>
       </tr>
      `

  emptyObject: ->
    @props.data.meta.reduce((hash, field) ->
      hash[field] = null
      hash
    , {})

  initWithEmptyObject: ->
    @setState(content: @emptyObject())

  update: (field, evt) ->
    newContent = @state.content
    newContent[field] = evt.target.value.trim()
    newContent[field] = null unless newContent[field].length
    if Utils.objectIsEmpty(newContent)
      @setState(content: null)
    else
      @setState(content: newContent)
