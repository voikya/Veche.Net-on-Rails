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
      slug = xref.slug.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')
      clickCallback = @fetchEntry.bind(@, xref.slug)
      path = "/entries/#{xref.slug}"
      `<li>
         <Lexicon.Link path={path} handler={clickCallback} content={slug} />
         &nbsp;
         "{xref.summary}"
       </li>
      `

  fetchEntry: (slug) ->
    Lexicon.API.getEntry(slug)
