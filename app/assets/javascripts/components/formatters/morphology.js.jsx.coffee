@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Morphology = React.createClass
  render: ->
    className = @props.data.name
    content = __html: @props.data.value
    `<div className={className} dangerouslySetInnerHTML={content} />`
