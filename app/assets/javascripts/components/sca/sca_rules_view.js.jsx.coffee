@VecheSCA ?= {}

@VecheSCA.SCARulesView = React.createClass
  getInitialState: ->
    rules: []

  componentWillMount: ->
    VecheSCA.API.getRules()
    VecheSCA.Event.register 'api:rules:response', @setRules

  render: ->
    newGroup = @createGroup
    groups = @renderGroups()
    `<div className="rules-view">
       <div className="controls">
         <button onClick={newGroup}>New Group</button>
       </div>
       {groups}
     </div>
    `

  renderGroups: ->
    if @state.rules.length == 0
      `<p>No sound changes defined.</p>`
    else
      groups = [`<VecheSCA.SCASoundChangeGroup group={group} />` for group in @state.rules]
      `<ul className="rules-list">
         {groups}
       </ul>
      `

  setRules: (data) ->
    @setState(rules: data)

  createGroup: ->
    VecheSCA.API.createRule
      title: "New Sound Change Group"
      description: "Description"
      order: @state.rules.length + 1
