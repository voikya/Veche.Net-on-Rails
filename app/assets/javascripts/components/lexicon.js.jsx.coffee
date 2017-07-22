@Lexicon ?= {}

@Lexicon.Lexicon = React.createClass
  getInitialState: ->
    isLoading: false
    isEditing: false

  eventHandlers:
    advancedSearchOpen: -> document.body.classList.add('advanced-search-open')
    advancedSearchClose: -> document.body.classList.remove('advanced-search-open')
    apiCallStart: -> @setState(isLoading: true)
    apiCallEnd: -> @setState(isLoading: false)
    enableEditMode: -> @setPrivilegedState(isEditing: true)
    disableEditMode: -> @setPrivilegedState(isEditing: false)

  componentWillMount: ->
    # Set up event listeners
    Lexicon.Event.register 'advancedSearch:open', @eventHandlers.advancedSearchOpen
    Lexicon.Event.register 'advancedSearch:close', @eventHandlers.advancedSearchClose
    Lexicon.Event.register 'api:start', @eventHandlers.apiCallStart.bind(@)
    Lexicon.Event.register 'api:finish', @eventHandlers.apiCallEnd.bind(@)
    Lexicon.Event.register 'edit:on', @eventHandlers.enableEditMode.bind(@)
    Lexicon.Event.register 'edit:off', @eventHandlers.disableEditMode.bind(@)
    # Set up API
    Lexicon.API.endpoint = @props.basePath
    # Set up router
    Lexicon.Router.init(@props.basePath)

  setPrivilegedState: (opts) ->
    @setState(opts) if @props.admin

  render: ->
    # Props
    admin = @props.admin
    entryCount = @props.entryCount
    language = @props.language
    lexemeField = @props.lexemeField
    structure = @props.structure
    # State
    isEditing = @state.isEditing
    # Nodes
    loading = `<div className="loading" />` if @state.isLoading

    `<div id="lexicon-wrapper">
       <Lexicon.LexiconHeader language={language} lexemeField={lexemeField} />
       {loading}
       <main>
         <Lexicon.SearchResults />
         <Lexicon.Entry language={language.name} entryCount={entryCount} isAdmin={admin} isEditing={isEditing} structure={structure} />
       </main>
     </div>
    `
