@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.PartOfSpeech = React.createClass
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
    name = @props.data.name
    type = @state.content.type
    classMembership = @state.content.class_membership
    form = @state.content.form

    type = `<span className="part-of-speech--type">{type}</span>` if type
    classMembership = `<span className="part-of-speech--class-membership">{classMembership}</span>` if classMembership
    form = `<span className="part-of-speech--form">{form}</span>` if form

    `<div className={name}>
       {type}
       {classMembership}
       {form}
     </div>
    `

  renderForEditing: ->
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless @state.content)
    placeholder = Utils.titleize(@props.data.name)
    if @state.content
      id = @state.content.id ? null
      update = @update
      opts = @props.data.meta.map (o) ->
        label = [o.type]
        label.push(o.class_membership) if o.class_membership
        label.push(o.form) if o.form
        label = label.join(", ")
        `<option value={o.id} key={o.id}>{label}</option>`
      `<div className={className}>
         <select value={id} onChange={update} placeholder={placeholder}>
           {opts}
         </select>
       </div>
      `
    else
      init = => @setState(content: { id: null })
      `<div className={className}>
         <input type="text" placeholder={placeholder} onClick={init} />
       </div>
      `

  update: (evt) ->
    selected = @props.data.meta.find (opt) -> opt.id is parseInt(evt.target.value, 10)
    @setState
      content:
        id: selected.id
        type: selected.type
        class_membership: selected.class_membership
        form: selected.form
