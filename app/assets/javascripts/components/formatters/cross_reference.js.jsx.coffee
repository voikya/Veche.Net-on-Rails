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
    `<div className={className}>
     <ul>
       {this.renderCrossReferences()}
     </ul>
     </div>
    `

  renderCrossReferences: ->
    editable = @props.isEditing
    @state.content.map (xref, idx) =>
      if editable
        update = @update.bind(@, idx)
        keydown = @handleKeydown.bind(@, idx)
        `<li onKeyDown={keydown} onBlur={update} contentEditable={true}>{xref.slug}</li>`
      else
        slug = xref.slug.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')
        click = @fetchEntry.bind(@, xref.slug)
        path = "/entries/#{xref.slug}"
        `<li>
           <Lexicon.Link path={path} handler={click} content={slug} />
           &nbsp;
           "{xref.summary}"
         </li>
        `

  handleKeydown: (idx, evt) ->
    switch evt.which
      when 13 # Enter
        evt.preventDefault()
        content = @state.content
        content.splice(idx + 1, 0, {slug: "new_xref", summary: "[reload to fetch definition]"})
        @setState(content: content)
      when 8 # Backspace
        if React.findDOMNode(@).querySelectorAll('li')[idx].textContent.length == 0
          evt.preventDefault()
          content = @state.content
          content.splice(idx, 1)
          @setState(content: content)

  update: (idx, evt) ->
    newXref = React.findDOMNode(@).querySelectorAll('li')[idx].innerHTML.trim()
    newContent = @state.content
    if newXref.length
      newContent[idx] = {slug: newXref, summary: "[reload to fetch definition]"}
    else
      newContent.splice(idx, 1)
    @setState(content: newContent)

  fetchEntry: (slug) ->
    Lexicon.API.getEntry(slug)
