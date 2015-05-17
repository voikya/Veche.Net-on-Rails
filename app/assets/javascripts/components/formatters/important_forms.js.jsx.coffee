@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.ImportantForms = React.createClass
  render: ->
    className = @props.data.name
    `<div className={className}>
       {this.renderForms()}
     </div>
    `

  renderForms: ->
    Object.keys(@props.data.value).map (f) =>
      content = __html: @props.data.value[f]
      `<p>
         <span className="label">{f}:</span>
         <span dangerouslySetInnerHTML={content} />
       </p>
      `
