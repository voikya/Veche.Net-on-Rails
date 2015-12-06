@VecheSCA ?= {}

@VecheSCA.SCARuleEditor = React.createClass
  getInitialState: ->
    isEditing: false
    title: ""
    description: ""
    soundChanges: []
    order: null
    saved: true

  componentWillMount: ->
    VecheSCA.Event.register 'api:rule:response', @receiveRule

  render: ->
    saved = @state.saved
    saveCallback = @save
    if !@state.isEditing
      `<div id="rule-editor">Please select a sound change group or create a new one.</div>`
    else
      title = @state.title
      description = @state.description
      soundChanges = @renderSoundChanges()
      updateTitle = (evt) => @setState(title: evt.target.value, saved: false)
      updateDescription = (evt) => @setState(description: evt.target.value, saved: false)
      newChange = @addSoundChange
      `<div id="rule-editor">
         <VecheSCA.SCASaveView saved={saved} saveCallback={saveCallback} />
         <input type="text"
                placeholder="Group Title"
                value={title}
                onChange={updateTitle} />
         <textarea placeholder="Group Description"
                   value={description}
                   onChange={updateDescription} />
         <fieldset>
           <legend>Sound Changes</legend>
           <button onClick={newChange} className="fa fa-plus"></button>
           <ol>
             {soundChanges}
           </ol>
         </fieldset>
       </div>
      `

  renderSoundChanges: ->
    for s, idx in @state.soundChanges
      updateInput = @updateSoundChangeAtIndex.bind(@, idx, 'input')
      updateOutput = @updateSoundChangeAtIndex.bind(@, idx, 'output')
      updateCond = @updateSoundChangeAtIndex.bind(@, idx, 'environment')
      `<li className="sound-change">
         <input type="text" placeholder="Input" value={s.input} onChange={updateInput} />
         →
         <input type="text" placeholder="Output" value={s.output} onChange={updateOutput} />
         /
         <input type="text" placeholder="Environment" value={s.environment} onChange={updateCond} />
       </li>
      `

  receiveRule: (data) ->
    @setState(title: data.title)
    @setState(description: data.description)
    @setState(soundChanges: data.sound_changes)
    @setState(order: data.order)
    @setState(saved: true)
    @setState(isEditing: true)

  addSoundChange: ->
    soundChanges = @state.soundChanges
    soundChanges.push
      input: null
      output: null
      environment: null
      order: soundChanges.length + 1
    @setState(soundChanges: soundChanges)

  updateSoundChangeAtIndex: (idx, key, evt) ->
    soundChanges = @state.soundChanges
    soundChanges[idx][key] = evt.target.value
    @setState(soundChanges: soundChanges, saved: false)

  save: ->
    rule =
      title: @state.title
      description: @state.description
      sound_changes: @state.soundChanges ? []
    VecheSCA.API.saveRule(@state.order, rule)
