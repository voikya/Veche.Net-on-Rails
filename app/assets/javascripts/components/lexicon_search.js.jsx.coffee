@Lexicon ?= {}

@Lexicon.Search = React.createClass
  getInitialState: ->
    advancedSearchIsOpen: false
    search: null
    advancedSearch: {}

  toggleAdvancedSearch: ->
    opened = !@state.advancedSearchIsOpen
    @setState(advancedSearchIsOpen: opened)
    if opened
      Lexicon.Event.trigger 'advancedSearch:open'
    else
      Lexicon.Event.trigger 'advancedSearch:close'

  updateSearchFieldValue: (evt) ->
    value = evt.target.value.trim()
    value = null unless value
    @setState(search: value)

  updateAdvancedFieldValue: (key, value) ->
    data = @state.advancedSearch
    if value?
      data[key] = value
    else
      delete data[key]
    @setState(advancedSearch: data)

  performSearch: (evt) ->
    evt.preventDefault()
    if @state.advancedSearchIsOpen
      Lexicon.API.advancedSearch(@state.advancedSearch)
    else
      Lexicon.API.search(@state.search) if @state.search

  render: ->
    `<div id="search">
       <form id="searchform" onSubmit={this.performSearch}>
         <input id="searchbox" type="text" placeholder="Search..." name="search" onChange={this.updateSearchFieldValue} />
         <button type="submit">
           <i className="fa fa-search" />
         </button>
         <a className="advanced" onClick={this.toggleAdvancedSearch}>Advanced Options</a>
         <Lexicon.AdvancedSearch visible={this.state.advancedSearchIsOpen} updateCallback={this.updateAdvancedFieldValue} />
       </form>
     </div>
    `
