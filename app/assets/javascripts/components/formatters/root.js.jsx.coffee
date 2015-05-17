@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Root = React.createClass
  render: ->
    className = @props.data.name
    `<div className={className}>
       {this.renderRoot()}
     </div>
    `

  renderRoot: ->
    content = @props.data.value.map (root, idx) =>
      slug = '*' + root.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')
      clickCallback = @fetchRoot.bind(@, root)
      path = "/entries?root=#{root}&exact=true"
      `<Lexicon.Link path={path} handler={clickCallback} content={slug} />`
    # Intersperse a '+' in between each root if there are multiple
    content = content.slice(1).reduce ((memo, current) ->
      memo.concat [' + ', current]
    ), [content[0]]
    content

  fetchRoot: (root) ->
    Lexicon.API.advancedSearch
      root: root
      exact: true
