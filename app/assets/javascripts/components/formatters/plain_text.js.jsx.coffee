@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.PlainText = React.createClass
  render: ->
    className = @props.data.name
    content = @props.data.value
    `<div className={className}>{content}</div>`
