@Lexicon ?= {}
@Lexicon.Formatters.Example = React.createClass
  render: ->
    className = @props.data.name
    `<div className={className}>
       {this.renderExamples()}
     </div>
    `

  renderExamples: ->
    @props.data.value.map (ex) ->
      `<p>
         {ex.example}
         <br/>
         <span className="transliteration">{ex.transliteration}</span>
         <br/>
         "{ex.translation}"
       </p>
      `
