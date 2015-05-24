@Lexicon ?= {}

@Lexicon.Formatters.Example = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value ? [{}])

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value ? [{}])

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    `<div className={className}>
       {this.renderExamples()}
     </div>
    `

  renderExamples: ->
    if @props.isEditing
      @state.content.map (ex, idx) =>
        update = @update.bind(@, idx)
        keydown = @handleKeydown.bind(@, idx)
        `<table className='editable-table' onKeyDown={keydown}>
           <tr>
             <th>Example</th>
             <td contentEditable={true} onBlur={update.bind(this, 'example')}>{ex.example}</td>
           </tr>
           <tr>
             <th>Transliteration</th>
             <td contentEditable={true} onBlur={update.bind(this, 'transliteration')}>{ex.transliteration}</td>
           </tr>
           <tr>
             <th>Translation</th>
             <td contentEditable={true} onBlur={update.bind(this, 'translation')}>{ex.translation}</td>
           </tr>
         </table>
        `
    else
      @state.content.map (ex) ->
        `<p>
           {ex.example}
           <br/>
           <span className="transliteration">{ex.transliteration}</span>
           <br/>
           "{ex.translation}"
         </p>
        `

  handleKeydown: (idx, evt) ->
    if evt.which == 13 # Enter
      evt.preventDefault()
      content = @state.content
      content.splice(idx + 1, 0, {})
      @setState(content: content)

  update: (idx, field, evt) ->
    newContent = @state.content
    newContent[idx][field] = evt.target.innerHTML.trim()
    if Utils.objectIsEmpty(newContent[idx]) and newContent.length > 1
      newContent.splice(idx, 1)
    @setState(content: newContent)
