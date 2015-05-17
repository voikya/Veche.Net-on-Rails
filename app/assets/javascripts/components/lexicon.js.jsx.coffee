@Lexicon ?= {}

@Lexicon.Lexicon = React.createClass
  getInitialState: ->
    isLoading: false

  eventHandlers:
    advancedSearchOpen: -> document.body.classList.add('advanced-search-open')
    advancedSearchClose: -> document.body.classList.remove('advanced-search-open')
    apiCallStart: -> @setState(isLoading: true)
    apiCallEnd: -> @setState(isLoading: false)

  componentWillMount: ->
    # Set up event listeners
    Lexicon.Event.register 'advancedSearch:open', @eventHandlers.advancedSearchOpen
    Lexicon.Event.register 'advancedSearch:close', @eventHandlers.advancedSearchClose
    Lexicon.Event.register 'api:start', @eventHandlers.apiCallStart.bind(@)
    Lexicon.Event.register 'api:finish', @eventHandlers.apiCallEnd.bind(@)
    # Set up API
    Lexicon.API.endpoint = @props.endpoint
    # Set up router
    Lexicon.Router.init(@props.basePath)

  render: ->
    loading = `<div className="loading" />` if @state.isLoading
    `<div id="lexicon-wrapper">
       <Lexicon.LexiconHeader language={this.props.language} lexemeField={this.props.lexemeField} />
       {loading}
       <main>
         <Lexicon.SearchResults />
         <Lexicon.Entry language={this.props.language.name} entryCount={this.props.entryCount} />
       </main>
     </div>
    `
