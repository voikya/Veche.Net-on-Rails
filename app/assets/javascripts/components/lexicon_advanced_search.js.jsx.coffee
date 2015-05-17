@Lexicon ?= {}

@Lexicon.AdvancedSearch = React.createClass
  getInitialState: ->
    word: null
    part_of_speech: null
    transliteration: null
    root: null
    definition: null
    any: null
    whole_word: false
    exact: false

  render: ->
    field = @advancedSearchField
    checkbox = @advancedSearchCheckbox
    `<div id="advanced-search">
       <table>
         <tr>
           {field('Word', 'word')}
           {field('Part of Speech', 'part_of_speech')}
         </tr>
         <tr>
           {field('Transliteration', 'transliteration')}
           {field('Root', 'root')}
         </tr>
         <tr>
           {field('Definition', 'definition')}
           {field('Any', 'any')}
         </tr>
         <tr>
           <td colSpan="6">
             {checkbox('Whole Word Matches Only', 'whole_word')}
             {checkbox('Exact Matches Only', 'exact')}
           </td>
         </tr>
       </table>
     </div>
    `

  advancedSearchField: (label, key) ->
    options = @advancedSearchFieldOptions()
    disabled = !@props.visible
    callback = @handleSelectChange.bind(@, key)
    [
      `<th>{label}</th>`,
      `<td>
         <select name={key + "_opts"} disabled={disabled} onChange={callback}>
           {options}
         </select>
       </td>`,
      `<td>
         <input type="text" name={key} disabled={disabled} onChange={callback} />
       </td>`
    ]

  advancedSearchFieldOptions: ->
    if @state.exact
      `<option value="contains">is</option>`
    else
      [
        `<option value="contains">contains</option>`,
        `<option value="begins_with">begins with</option>`,
        `<option value="ends_with">ends with</option>`
      ]

  advancedSearchCheckbox: (label, key) ->
    callback = @handleCheckboxChange.bind(@, key)
    `<div className="checkbox-group">
       <input type="checkbox" value="1" name={key} onChange={callback} />
       <label for={key}>{label}</label>
     </div>
    `

  handleSelectChange: (name, evt) ->
    selectNode = document.getElementsByName("#{name}_opts")[0]
    option = selectNode.options[selectNode.selectedIndex].value
    value = document.getElementsByName(name)[0].value.trim()
    data = {}
    data[name] = if value then {option: option, value: value} else null
    @setState(data)
    if value
      switch option
        when 'contains'
          @props.updateCallback(name, value)
        when 'begins_with'
          @props.updateCallback(name, "#{value}*")
        when 'ends_with'
          @props.updateCallback(name, "*#{value}")
    else
      @props.updateCallback(name, null)

  handleCheckboxChange: (name, evt) ->
    data = {}
    data[name] = evt.target.checked
    @setState(data)
    @props.updateCallback(name, evt.target.checked)
