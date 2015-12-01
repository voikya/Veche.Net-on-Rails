@VecheSCA ?= {}

@VecheSCA.SCAFeatureCheckbox = React.createClass
  render: ->
    if @props.customValue
      @renderCustomField()
    else
      @renderBooleanField()

  renderCustomField: ->
    `<p>Custom</p>`

  renderBooleanField: ->
    label = @props.feature.titleize()
    value = @valueAsString()
    onclick = @update
    `<div className="feature-checkbox">
       <div className="checkbox" data-state={value} onClick={onclick}></div>
       <label>{label}</label>
     </div>
    `

  valueAsString: ->
    if @props.customValue
      if @props.value then "set" else "unset"
    else
      if @props.value is true
        "true"
      else if @props.value is false
        "false"
      else
        "undefined"

  nextState: ->
    if @props.customValue
      if @props.value then null else ""
    else
      if @props.value is true
        false
      else if @props.value is false
        null
      else
        true

  update: ->
    @props.updateCallback(@props.feature, @nextState())
