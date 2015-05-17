@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.CrossReference = React.createClass
  render: ->
    className = @props.data.name
    `<div className={className}>
     <ul>
       {this.renderCrossReferences()}
     </ul>
     </div>
    `

  renderCrossReferences: ->
    @props.data.value.map (xref) =>
      slug = __html: xref.slug.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')
      clickCallback = @fetchEntry.bind(@, xref.slug)
      `<li>
         <a onClick={clickCallback} dangerouslySetInnerHTML={slug}></a>
         &nbsp;
         "{xref.summary}"
       </li>
      `

  fetchEntry: (slug) ->
    Lexicon.API.getEntry(slug)
