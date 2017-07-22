@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Note = React.createClass
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
    paragraphs = @state.content.map (p, idx) ->
      p = Utils.markupToHtml(p)
      `<p key={idx}>{p}</p>`
    `<div className={name}>
       <fieldset>
         <legend>Notes</legend>
         {paragraphs}
       </fieldset>
     </div>
    `

  renderForEditing: ->
    content = @state.content ? [""]
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless @state.content)
    placeholder = Utils.titleize(@props.data.name)
    paragraphs = content.map (p, idx) =>
      update = @update.bind(@, idx)
      keydown = @handleKeydown.bind(@, idx)
      `<textarea key={idx} value={p} onChange={update} onKeyDown={keydown} placeholder={placeholder} />`
    if @state.content
      `<div className={className}>
         <fieldset>
           <legend>Notes</legend>
           {paragraphs}
         </fieldset>
       </div>
      `
    else
      `<div className={className}>
         {paragraphs}
       </div>
      `

  handleKeydown: (idx, evt) ->
    switch evt.which
      when 13 # Enter
        evt.preventDefault()
        content = @state.content
        content.splice(idx + 1, 0, "")
        @setState(content: content)
        break
      when 8 # Backspace
        if ReactDOM.findDOMNode(@).querySelectorAll('textarea')[idx].value.length == 0
          evt.preventDefault()
          content = @state.content
          return unless content?
          content.splice(idx, 1)
          content = null unless content.length
          @setState(content: content)
        break

  update: (idx, evt) ->
    newPara = ReactDOM.findDOMNode(@).querySelectorAll('textarea')[idx].value.trim()
    Utils.next =>
      newContent = @state.content ? []
      newContent[idx] = newPara
      @setState(content: newContent)
