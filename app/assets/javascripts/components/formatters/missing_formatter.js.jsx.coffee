@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.MissingFormatter = React.createClass
  render: ->
    classes = "missing-formatter #{@props.data.name}"
    data = JSON.stringify @props.data.value
    `<div className={classes}>{data}</div>`
