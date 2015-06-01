@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Definition = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    init = @initializeWithEmptyData
    `<div className={className} onClick={init}>
       {this.renderDefinitionList()}
     </div>
    `

  renderDefinitionList: ->
    if @state.content
      `<ol>{this.renderDefinitions()}</ol>`

  renderDefinitions: ->
    editable = @props.isEditing
    @state.content.map (def, idx) =>
      update = @update.bind(@, idx) if editable
      keydown = @handleKeydown.bind(@, idx) if editable
      def = __html: def
      `<li contentEditable={editable}
           onKeyDown={keydown}
           onBlur={update}
           dangerouslySetInnerHTML={def} />
      `

  handleKeydown: (idx, evt) ->
    switch evt.which
      when 13 # Enter
        evt.preventDefault()
        content = @state.content
        content.splice(idx + 1, 0, "New Definition")
        @setState(content: content)
      when 8 # Backspace
        if React.findDOMNode(@).querySelectorAll('li')[idx].textContent.length == 0
          evt.preventDefault()
          content = @state.content
          content.splice(idx, 1)
          content = null unless content.length
          @setState(content: content)

  initializeWithEmptyData: ->
    unless @state.content
      @setState(content: ["New definition"])

  update: (idx, evt) ->
    newDefinition = React.findDOMNode(@).querySelectorAll('li')[idx].innerHTML.trim()
    newContent = @state.content
    if newDefinition.length
      newContent[idx] = newDefinition
    else
      newContent.splice(idx, 1)
    newContent = null unless newContent.length
    @setState(content: newContent)
