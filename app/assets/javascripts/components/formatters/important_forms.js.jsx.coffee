@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.ImportantForms = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    init = @initializeWithEmptyData
    `<div className={className} onClick={init}>
       {this.renderForms()}
     </div>
    `

  renderForms: ->
    if @state.content
      if @props.isEditing
        `<table className='editable-table'>
           {this.renderEditableRows()}
         </table>
        `
      else
        Object.keys(@state.content).map (f) =>
          content = __html: @props.data.value[f]
          `<p>
             <span className="label">{f}:</span>
             <span dangerouslySetInnerHTML={content} />
           </p>
          `

  renderEditableRows: ->
    Object.keys(@state.content ? {}).map (f, idx) =>
      v = @state.content[f]
      update = @update.bind(@, f)
      keydown = @handleKeydown.bind(@, f)
      `<tr>
         <th contentEditable={true} onKeyDown={keydown.bind(this, 'key')} onBlur={update.bind(this, 'key')}>{f}</th>
         <td contentEditable={true} onKeyDown={keydown.bind(this, 'value')} onBlur={update.bind(this, 'value')}>{v}</td>
       </tr>
      `

  handleKeydown: (field, type, evt) ->
    switch evt.which
      when 13 # Enter
        evt.preventDefault()
        content = @state.content
        content["New Form"] = "Value"
        @setState(content: content)
      when 8 # Backspace
        if evt.target.textContent.length == 0
          evt.preventDefault()
          content = @state.content
          if type == 'key'
            delete content[field]
          else if type == 'value'
            content[field] = null
          content = null if Utils.objectIsEmpty(content)
          @setState(content: content)

  initializeWithEmptyData: ->
    unless @state.content
      @setState(content: {"New Form": "Value"})

  update: (field, type, evt) ->
    content = @state.content
    newValue = evt.target.innerHTML.trim()
    if type == 'key' and newValue != field
      content[newValue] = content[field]
      delete content[field]
    else if type == 'value'
      content[field] = newValue
    content = null if Utils.objectIsEmpty(content)
    @setState(content: content)
