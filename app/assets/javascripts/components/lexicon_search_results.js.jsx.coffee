@Lexicon ?= {}

@Lexicon.SearchResults = React.createClass
  getInitialState: ->
    searchResults: []
    partialResults: []

  componentWillMount: ->
    # Set up event listeners
    Lexicon.Event.register 'api:search:response', @receiveSearchResults

  render: ->
    `<div id="search-results">
      {this.renderResults()}
      {this.renderPartialResults()}
     </div>
    `

  renderResults: ->
    length = @state.searchResults.length
    `<div>
       <p>{length} {length === 1 ? 'match' : 'matches'} returned.</p>
       <ul>
         {this.renderResultListItems(this.state.searchResults)}
       </ul>
     </div>
    `

  renderPartialResults: ->
    if length = @state.partialResults.length
      `<div>
         <p>
           In addition, the following {length} {length === 1 ? 'record' : 'records'}
           partially matched your search:
         </p>
         <ul>
           {this.renderResultListItems(this.state.partialResults)}
         </ul>
       </div>
      `
  renderResultListItems: (list) ->
    list.map (w) -> `<Lexicon.SearchResultItem slug={w} />`

  receiveSearchResults: (data) ->
    @setState
      searchResults: data.results
      partialResults: data.partial_results
