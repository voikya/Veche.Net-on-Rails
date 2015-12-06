@VecheSCA ?= {}

@VecheSCA.SCASoundChangeGroup = React.createClass
  render: ->
    title = @props.group.title
    description = @props.group.description
    soundChanges = @renderSoundChanges()
    editGroup = @editGroup
    `<li className="sound-change-group">
       <button onClick={editGroup} className="fa fa-edit"></button>
       <div className="sound-change-group-inner">
         <h3>{title}</h3>
         <p className="description">{description}</p>
         {soundChanges}
       </div>
     </li>
    `

  renderSoundChanges: ->
    for soundChange, idx in (@props.group.sound_changes ? [])
      `<div className="sound-change">
         <div className="primary">
           {soundChange.input} → {soundChange.output} / {soundChange.environment}
         </div>
       </div>
      `

  editGroup: ->
    VecheSCA.API.getRule(@props.group.order)
