@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Definition = React.createClass
  render: ->
    className = @props.data.name
    `<div className={className}>
       <ol>
         {this.renderDefinitionList()}
       </ol>
     </div>
    `

  renderDefinitionList: ->
    @props.data.value.map (def) ->
      def = __html: def
      `<li dangerouslySetInnerHTML={def} />`
