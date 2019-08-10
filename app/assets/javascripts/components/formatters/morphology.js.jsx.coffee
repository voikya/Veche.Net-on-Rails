@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Morphology = React.createClass
  componentWillMount: ->
    Lexicon.Event.register 'api:morphology:response', (data) => @setState(html: data)
    @setState
      content: @props.data.value
      flags: new Set(@props.data.value?.flags?.split(' '))
    Lexicon.API.getMorphology(@props.slug) unless @props.isEditing

  componentWillReceiveProps: (nextProps) ->
    if nextProps.slug isnt @props.slug
      @setState
        content: nextProps.data.value
        flags: new Set(nextProps.data.value?.flags?.split(' '))
        html: null
      Lexicon.API.getMorphology(nextProps.slug) unless nextProps.isEditing
    else
      @setState(content: nextProps.data.value)

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
      input = null
      if field.options?.length
        if field.key is 'category'
          options = [`<option value="" key="">---</option>`]
          options = options.concat(field.options.map((o) -> `<option value={o.key} key={o.key}>{o.label}</option>`))
          input = `<select value={value} onChange={update} required>{options}</select>`
        else if field.key is 'group'
          options = [`<option value="" key="">---</option>`]
          options = options.concat(field.options.filter((o) => o.category_prerequisite is @state.content.category)
                                                .map((o) -> `<option value={o.key} key={o.key}>{o.label}</option>`))
          input = `<select value={value} onChange={update} required>{options}</select>`
        else if field.key is 'subgroup'
          options = [`<option value="" key="">---</option>`]
          options =  options.concat(field.options.filter((o) => o.category_prerequisite is @state.content.category and o.group_prerequisite is @state.content.group)
                                                 .map((o) -> `<option value={o.key} key={o.key}>{o.label}</option>`))
          input = `<select value={value} onChange={update} required>{options}</select>`
        else if field.key is 'flags'
          input = field.options.filter((o) => !o.category_prerequisite? or o.category_prerequisite is @state.content.category)
                               .map((o) =>
                                 isChecked = @state.flags.has(o.key)
                                 toggleFlag = @toggleFlag.bind(@, o.key)
                                 `<Lexicon.Checkbox label={o.label} value={o.key} isChecked={isChecked} toggleFlag={toggleFlag} key={o.key} />`
                               )
      else
        input = `<input type="text" value={value} onChange={update} />`
      `<tr key={field.key}>
         <th>{field.key}</th>
         <td>{input}</td>
       </tr>
      `

  emptyObject: ->
    @props.data.meta.reduce((hash, field) ->
      hash[field.key] = null
      hash
    , {})

  initWithEmptyObject: ->
    @setState(content: @emptyObject())

  update: (field, evt) ->
    newContent = @state.content
    newContent[field] = evt.target.value.trim()
    newContent[field] = null unless newContent[field].length
    if field is 'category'
      # Clear out all flags on category change
      newContent.flags = null
      @setState(flags: new Set())
    if Utils.objectIsEmpty(newContent)
      @setState(content: null)
    else
      @setState(content: newContent)

  toggleFlag: (flag) ->
    if @state.flags.has(flag)
      @state.flags.delete(flag)
    else
      @state.flags.add(flag)
    newContent = @state.content
    newContent.flags = if @state.flags.size then Array.from(@state.flags).join(' ') else null
    @setState(content: newContent)
