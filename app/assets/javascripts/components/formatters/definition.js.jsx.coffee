@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Definition = React.createClass
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
    definitions = @state.content.map (def, idx) ->
      def = Utils.markupToHtml(def)
      `<li key={idx}>{def}</li>`
    `<div className={name}>
       <ol>{definitions}</ol>
     </div>
    `

  renderForEditing: ->
    content = @state.content ? [""]
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless @state.content)
    placeholder = Utils.titleize(@props.data.name)
    definitions = content.map (def, idx) =>
      update = @update.bind(@, idx)
      keydown = @handleKeydown.bind(@, idx)
      `<li key={idx}>
         <input type='text' onChange={update} onKeyDown={keydown} placeholder={placeholder} value={def} />
       </li>
      `
    `<div className={className}>
       <ol>{definitions}</ol>
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
        if ReactDOM.findDOMNode(@).querySelectorAll('input')[idx].value.length == 0
          evt.preventDefault()
          content = @state.content
          return unless content?
          content.splice(idx, 1)
          content = null unless content.length
          @setState(content: content)
        break

  update: (idx, evt) ->
    newDefinition = ReactDOM.findDOMNode(@).querySelectorAll('input')[idx].value
    Utils.next =>
      newContent = @state.content ? []
      newContent[idx] = newDefinition
      @setState(content: newContent)
