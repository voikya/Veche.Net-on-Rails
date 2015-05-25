@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Note = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    init = @initializeWithEmptyData.bind(@)
    `<div className={className} onClick={init}>
       {this.renderNoteFieldset()}
     </div>
    `

  renderNoteFieldset: ->
    if @state.content
      `<fieldset>
         <legend>Notes</legend>
         {this.renderParagraphs()}
       </fieldset>
      `

  renderParagraphs: ->
    editable = @props.isEditing
    @state.content.map (p, idx) =>
      update = @update.bind(@, idx) if editable
      keydown = @handleKeydown.bind(@, idx) if editable
      p = __html: p
      `<p contentEditable={editable}
          onKeyDown={keydown}
          onBlur={update}
          dangerouslySetInnerHTML={p} />
      `

  handleKeydown: (idx, evt) ->
    switch evt.which
      when 13 # Enter
        evt.preventDefault()
        content = @state.content
        content.splice(idx + 1, 0, "New paragraph")
        @setState(content: content)
      when 8 # Backspace
        if React.findDOMNode(@).querySelectorAll('p')[idx].textContent.length == 0
          evt.preventDefault()
          content = @state.content
          content.splice(idx, 1)
          content = null unless content.length
          @setState(content: content)

  initializeWithEmptyData: ->
    unless @state.content
      @setState(content: ["New Note"])

  update: (idx, evt) ->
    newParagraph = React.findDOMNode(@).querySelectorAll('p')[idx].innerHTML.trim()
    newContent = @state.content
    if newParagraph.length
      newContent[idx] = newParagraph
    else
      newContent.splice(idx, 1)
    newContent = null unless newContent.length
    @setState(content: newContent)
