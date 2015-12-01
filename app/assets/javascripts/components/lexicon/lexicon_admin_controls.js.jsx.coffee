@Lexicon ?= {}

@Lexicon.AdminControls = React.createClass
  render: ->
    edit = @renderEditControl()
    add = @renderAddControl()
    save = @renderSaveControl()
    cancel = @renderCancelControl()
    `<div id="admin-controls">
       {edit}
       {add}
       {save}
       {cancel}
     </div>
    `

  renderEditControl: ->
    if @props.slug and not @props.isEditing
      path = "/entries/#{@props.slug}/edit"
      content = "<i class='fa fa-edit'></i>"
      handler = @transitionToEdit
      `<Lexicon.Link path={path} handler={handler} content={content} />`

  renderAddControl: ->
    unless @props.isEditing
      path = "/new"
      content = "<i class='fa fa-plus-square'></i>"
      handler = @transitionToAdd
      `<Lexicon.Link path={path} handler={handler} content={content} />`

  renderSaveControl: ->
    if @props.isEditing
      path = if @props.slug then "/entries/#{@props.slug}" else "/entries"
      content = "<i class='fa fa-check'></i>"
      handler = @props.saveHandler
      `<Lexicon.Link path={path} handler={handler} content={content} />`

  renderCancelControl: ->
    if @props.isEditing
      path = if @props.slug then "/entries/#{@props.slug}" else "/"
      content = "<i class='fa fa-times'></i>"
      handler = @transitionOutOfEdit
      `<Lexicon.Link path={path} handler={handler} content={content} />`

  transitionToEdit: ->
    Lexicon.API.editEntry(@props.slug)

  transitionOutOfEdit: ->
    if @props.slug
      Lexicon.API.getEntry(@props.slug)
    else
      Lexicon.Router.transition '/'
      Lexicon.Event.trigger 'edit:off'

  transitionToAdd: ->
    Lexicon.API.newEntry()
