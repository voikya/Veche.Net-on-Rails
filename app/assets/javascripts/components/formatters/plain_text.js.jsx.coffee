@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.PlainText = React.createClass
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
    content = @state.content
    name = @props.data.name
    `<div className={name}>{content}</div>`

  renderForEditing: ->
    content = @state.content ? ""
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless @state.content.length)
    placeholder = Utils.titleize(@props.data.name)
    update = @update
    `<div className={className}>
       <input type='text' onChange={update} value={content} placeholder={placeholder} />
     </div>
    `

  update: (evt) ->
    @setState(content: evt.target.value)
