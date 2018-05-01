@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.ExampleWithoutTransliteration = React.createClass
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
    examples = @state.content.map (ex, idx) ->
      `<p key={idx}>
         {ex.example}
         <br/>
         "{ex.translation}"
       </p>
      `
    `<div className={name}>
       {examples}
     </div>
    `

  renderForEditing: ->
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless @state.content)
    if @state.content
      examples = @state.content.map (ex, idx) =>
        update = @update.bind(@, idx)
        keydown = @handleKeydown.bind(@, idx)
        `<table className='editable-table' onKeyDown={keydown} key={idx}>
           <tbody>
             <tr>
               <th>Example</th>
               <td>
                 <input type="text" value={ex.example} onChange={update.bind(this, 'example')} />
               </td>
             </tr>
             <tr>
               <th>Translation</th>
               <td>
                 <input type="text" value={ex.translation} onChange={update.bind(this, 'translation')} />
               </td>
             </tr>
           </tbody>
         </table>
        `
      `<div className={className}>
         {examples}
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
    example: ""
    translation: ""

  initWithEmptyObject: ->
    @setState(content: [@emptyObject()])

  handleKeydown: (idx, evt) ->
    if evt.which == 13 # Enter
      evt.preventDefault()
      content = @state.content
      content.splice(idx + 1, 0, @emptyObject())
      @setState(content: content)

  update: (idx, field, evt) ->
    newContent = @state.content
    newContent[idx][field] = evt.target.value.trim()
    if Utils.objectIsEmpty(newContent[idx])
      newContent.splice(idx, 1)
    newContent = null unless newContent.length
    @setState(content: newContent)
