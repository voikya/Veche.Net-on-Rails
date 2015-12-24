@VecheSCA ?= {}

@VecheSCA.SCARulesView = React.createClass
  getInitialState: ->
    rules: []

  componentWillMount: ->
    VecheSCA.API.getRules()
    VecheSCA.Event.register 'api:rules:response', @setRules

  render: ->
    groups = @renderGroups()
    controls = @renderControls()
    `<div className="rules-view">
       {controls}
       {groups}
     </div>
    `

  renderGroups: ->
    if @state.rules.length == 0
      `<p>No sound changes defined.</p>`
    else
      editable = @props.editable
      groups = [`<VecheSCA.SCASoundChangeGroup group={group}
                                               key={group.id}
                                               editable={editable} />` for group in @state.rules]
      `<ul className="rules-list">
         {groups}
       </ul>
      `

  renderControls: ->
    if @props.editable
      newGroup = @createGroup
      `<div className="controls">
         <button onClick={newGroup}>New Group</button>
       </div>
      `

  setRules: (data) ->
    @setState(rules: data)

  createGroup: ->
    VecheSCA.API.createRule
      title: "New Sound Change Group"
      description: "Description"
      order: @state.rules.length + 1
