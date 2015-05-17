@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Note = React.createClass
  render: ->
    className = @props.data.name
    `<div className={className}>
       <fieldset>
         <legend>Notes</legend>
         {this.renderParagraphs()}
       </fieldset>
     </div>
    `

  renderParagraphs: ->
    @props.data.value.map (p) ->
      p = __html: p
      `<p dangerouslySetInnerHTML={p} />`
