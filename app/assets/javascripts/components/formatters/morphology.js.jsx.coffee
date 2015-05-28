@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Morphology = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWilLReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    className = @props.data.name
    content = __html: @props.data.value
    `<div className={className} dangerouslySetInnerHTML={content} />`
