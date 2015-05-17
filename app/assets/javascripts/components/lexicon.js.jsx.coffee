@Lexicon ?= {}

@Lexicon.Lexicon = React.createClass
  eventHandlers:
    advancedSearchOpen: -> document.body.classList.add('advanced-search-open')
    advancedSearchClose: -> document.body.classList.remove('advanced-search-open')

  componentWillMount: ->
    # Set up event listeners
    Lexicon.Event.register 'advancedSearch:open', @eventHandlers.advancedSearchOpen
    Lexicon.Event.register 'advancedSearch:close', @eventHandlers.advancedSearchClose
    # Set up API
    Lexicon.API.endpoint = @props.endpoint

  render: ->
    `<div id="lexicon-wrapper">
       <Lexicon.LexiconHeader language={this.props.language} lexemeField={this.props.lexemeField} />
       <main>
         <Lexicon.SearchResults />
         <Lexicon.Entry language={this.props.language.name} entryCount={this.props.entryCount} />
       </main>
     </div>
    `
