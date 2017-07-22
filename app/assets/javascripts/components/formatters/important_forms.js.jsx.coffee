@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.ImportantForms = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: @props.data.value)

  render: ->
    if @props.isEditing
      @renderForEditing()
    else
      @renderForReading()

  renderForReading: ->
    name = @props.data.name
    forms = @state.content.map (form, idx) =>
      content = Utils.markupToHtml(form.value)
      `<p key={idx}>
         <span className="label">{form.key}:</span>
         &nbsp;
         <span>{content}</span>
       </p>
      `
    `<div className={name}>
       {forms}
     </div>
    `

  renderForEditing: ->
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless @state.content)
    if @state.content
      forms = @state.content.map (form, idx) =>
        update = @update.bind(@, idx)
        keydown = @handleKeydown.bind(@, idx)
        `<tr key={idx}>
           <th>
             <input type="text" value={form.key} onKeyDown={keydown.bind(this, 'key')} onChange={update.bind(this, 'key')} />
           </th>
           <td>
             <input type="text" value={form.value} onKeyDown={keydown.bind(this, 'value')} onChange={update.bind(this, 'value')} />
           </td>
         </tr>
        `
      `<div className={className}>
         <table className='editable-table'>
           <tbody>
             {forms}
           </tbody>
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

  emptyObject: ->
    key: "Key",
    value: "Value"

  initWithEmptyObject: ->
    @setState(content: [@emptyObject()])

  handleKeydown: (idx, type, evt) ->
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
          if type is 'key'
            content.splice(idx, 1)
          content = null unless content.length
          @setState(content: content)

  update: (idx, type, evt) ->
    newContent = @state.content
    newContent[idx][type] = evt.target.value.trim()
    newContent = null unless newContent.length
    @setState(content: newContent)
