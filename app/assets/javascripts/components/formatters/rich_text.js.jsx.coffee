@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.RichText = React.createClass
  render: ->
    className = @props.data.name
    `<div className={className}>
       {this.renderParagraphs()}
     </div>
    `

  renderParagraphs: ->
    @props.data.value.map (p) ->
      p = __html: p
      `<p dangerouslySetInnerHTML={p} />`
