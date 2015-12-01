@Lexicon ?= {}

@Lexicon.SearchResultItem = React.createClass
  render: ->
    slug = @slugify(@props.slug)
    loadEntry = @loadEntry.bind(@, @props.slug)
    path = "/entries/#{@props.slug}"
    `<li>
       <Lexicon.Link path={path} handler={loadEntry} content={slug} />
     </li>
    `

  slugify: (string) ->
    string.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')

  loadEntry: (slug) ->
    Lexicon.API.getEntry(slug)
