@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Root = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    if @props.isEditing
      @renderForEditing()
    else
      @renderForReading()

  renderForReading: ->
    content = @state.content.map (root, idx) =>
      slug = '*' + root.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')
      clickCallback = @fetchRoot.bind(@, root)
      path = "/entries?root=#{root}&exact=true"
      `<Lexicon.Link path={path} handler={clickCallback} content={slug} key={root} />`
    # Intersperse a '+' in between each root if there are multiple
    content = content.slice(1).reduce ((memo, current) ->
      memo.concat [' + ', current]
    ), [content[0]]
    name = @props.data.name
    `<div className={name}>{content}</div>`

  renderForEditing: ->
    content = @state.content?.join(", ") ? ""
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless content.length)
    placeholder = Utils.titleize(@props.data.name)
    update = @update
    `<div className={className}>
       <input type='text' onChange={update} value={content} placeholder={placeholder} />
     </div>
    `

  fetchRoot: (root) ->
    Lexicon.API.advancedSearch
      root: root
      exact: true

  update: (evt) ->
    newContent = evt.target.value.split(',').map (r) -> r.trim()
    newContent = null unless newContent.length
    @setState(content: newContent)
