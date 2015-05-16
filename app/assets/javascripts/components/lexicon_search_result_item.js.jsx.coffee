@Lexicon ?= {}

@Lexicon.SearchResultItem = React.createClass
  render: ->
    slug = @slugify(@props.slug)
    loadEntry = @loadEntry.bind(@, @props.slug)
    `<li>
       <a dangerouslySetInnerHTML={slug} onClick={loadEntry}></a>
     </li>
    `

  slugify: (string) ->
    __html: string.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')

  loadEntry: (slug) ->
    Lexicon.API.getEntry(slug)
