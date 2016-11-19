@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Root = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    update = @update if editable
    `<div className={className} onBlur={update} contentEditable={editable}>{this.renderRoot()}</div>`

  renderRoot: ->
    if @state.content
      if @props.isEditing
        content = @state.content.join(", ")
      else
        content = @state.content.map (root, idx) =>
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

  update: (evt) ->
    newContent = ReactDOM.findDOMNode(@).textContent.split(',').map (r) -> r.trim()
    newContent = null unless newContent.length
    @setState(content: newContent)
