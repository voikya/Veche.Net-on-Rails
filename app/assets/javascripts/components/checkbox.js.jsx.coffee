@Lexicon ?= {}

@Lexicon.Checkbox = React.createClass
  componentWillMount: ->
    @setState(isChecked: @props.isChecked)

  componentWillReceiveProps: (nextProps) ->
    @setState(isChecked: nextProps.isChecked)

  render: ->
    value = @props.value
    label = @props.label
    isChecked = @state.isChecked
    update = @props.toggleFlag
    `<div className="checkbox">
       <input type="checkbox" value={value} name={value} checked={isChecked} onChange={update} />
       <label htmlFor={value}>{label}</label>
     </div>
    `
