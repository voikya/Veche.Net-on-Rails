@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.PlainText = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    content = @state.content
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    update = @update if editable
    `<div className={className} onBlur={update} contentEditable={editable}>
       {content}
     </div>
    `

  update: (evt) ->
    newContent = React.findDOMNode(@).textContent.trim() or null
    @setState(content: newContent)
