@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.CrossReference = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    init = @initializeWithEmptyData
    `<div className={className} onClick={init}>
       {this.renderCrossReferenceList()}
     </div>
    `

  renderCrossReferenceList: ->
    if @state.content
      `<ul>{this.renderCrossReferences()}</ul>`

  renderCrossReferences: ->
    @state.content.map (xref, idx) =>
      if @props.isEditing
        update = @update.bind(@, idx)
        keydown = @handleKeydown.bind(@, idx)
        `<li onKeyDown={keydown} onBlur={update} contentEditable={true}>{xref}</li>`
      else
        slug = xref.slug.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')
        click = @fetchEntry.bind(@, xref.slug)
        path = "/entries/#{xref.slug}"
        summary = "\"#{xref.summary}\"" if xref.summary
        `<li>
           <Lexicon.Link path={path} handler={click} content={slug} />
           &nbsp;
           {summary}
         </li>
        `

  handleKeydown: (idx, evt) ->
    switch evt.which
      when 13 # Enter
        evt.preventDefault()
        content = @state.content
        content.splice(idx + 1, 0, "new_xref")
        @setState(content: content)
      when 8 # Backspace
        if React.findDOMNode(@).querySelectorAll('li')[idx].textContent.length == 0
          evt.preventDefault()
          content = @state.content
          content.splice(idx, 1)
          content = null unless content.length
          @setState(content: content)

  initializeWithEmptyData: ->
    unless @state.content
      @setState(content: ["new_xref"])

  update: (idx, evt) ->
    newXref = React.findDOMNode(@).querySelectorAll('li')[idx].innerHTML.trim()
    newContent = @state.content
    if newXref.length
      newContent[idx] = newXref
    else
      newContent.splice(idx, 1)
    newContent = null unless newContent.length
    @setState(content: newContent)

  fetchEntry: (slug) ->
    Lexicon.API.getEntry(slug)
