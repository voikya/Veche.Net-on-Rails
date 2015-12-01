@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.RichText = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    init = @initializeWithEmptyData
    `<div className={className} onClick={init}>
       {this.renderParagraphs()}
     </div>
    `

  renderParagraphs: ->
    if @state.content
      editable = @props.isEditing
      @state.content.map (p, idx) =>
        if editable
          update = @update.bind(@, idx)
          keydown = @handleKeydown.bind(@, idx)
        else
          p = Utils.markupToHtml(p)
        `<p contentEditable={editable} onKeyDown={keydown} onBlur={update}>{p}</p>`

  handleKeydown: (idx, evt) ->
    switch evt.which
      when 13 # Enter
        evt.preventDefault()
        content = @state.content
        content.splice(idx + 1, 0, "New paragraph")
        @setState(content: content)
      when 8 # Backspace
        if React.findDOMNode(@).childNodes[idx].textContent.length == 0
          evt.preventDefault()
          content = @state.content
          content.splice(idx, 1)
          content = null unless content.length
          @setState(content: content)

  initializeWithEmptyData: ->
    unless @state.content
      @setState(content: ["New paragraph"])

  update: (idx, evt) ->
    newParagraph = React.findDOMNode(@).childNodes[idx].innerHTML.trim()
    newContent = @state.content
    if newParagraph.length
      newContent[idx] = newParagraph
    else
      newContent.splice(idx, 1)
    newContent = null unless newContent.length
    @setState(content: newContent)
