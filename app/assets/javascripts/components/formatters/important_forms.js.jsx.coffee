@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.ImportantForms = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    `<div className={className}>
       {this.renderForms()}
     </div>
    `

  renderForms: ->
    if @props.isEditing
      `<table className='editable-table'>
         {this.renderEditableRows()}
       </table>
      `
    else
      Object.keys(@state.content).map (f) =>
        content = __html: @props.data.value[f]
        `<p>
           <span className="label">{f}:</span>
           <span dangerouslySetInnerHTML={content} />
         </p>
        `

  renderEditableRows: ->
    Object.keys(@state.content ? {}).map (f, idx) =>
      v = @state.content[f]
      `<tr>
         <th contentEditable={true}>{f}</th>
         <td contentEditabke={true}>{v}</td>
       </tr>
      `
