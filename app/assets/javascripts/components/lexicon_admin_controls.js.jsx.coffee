@Lexicon ?= {}

@Lexicon.AdminControls = React.createClass
  render: ->
    edit = @renderEditControl()
    add = @renderAddControl()
    exit = @renderExitControl()
    `<div id="admin-controls">
       {edit}
       {add}
       {exit}
     </div>
    `

  renderEditControl: ->
    if @props.slug and not @props.isEditing
      path = "/entries/#{@props.slug}/edit"
      content = "<i class='fa fa-edit'></i>"
      handler = @transitionToEdit.bind(@)
      `<Lexicon.Link path={path} handler={handler} content={content} />`

  renderAddControl: ->
    unless @props.isEditing
      path = "/new"
      content = "<i class='fa fa-plus-square'></i>"
      handler = @transitionToAdd.bind(@)
      `<Lexicon.Link path={path} handler={handler} content={content} />`

  renderExitControl: ->
    if @props.isEditing
      path = if @props.slug then "/entries/#{@props.slug}" else "/"
      content = "<i class='fa fa-times'></i>"
      handler = @transitionOutOfEdit.bind(@)
      `<Lexicon.Link path={path} handler={handler} content={content} />`

  transitionToEdit: ->
    Lexicon.API.editEntry(@props.slug)

  transitionOutOfEdit: ->
    Lexicon.API.getEntry(@props.slug)

  transitionToAdd: ->
    Lexicon.API.newEntry()
