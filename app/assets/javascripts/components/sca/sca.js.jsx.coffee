@VecheSCA ?= {}

@VecheSCA.VecheSCA = React.createClass
  getInitialState: ->
    isLoading: false
    view: 'main'

  eventHandlers:
    apiCallStart: -> @setState(isLoading: true)
    apiCallEnd: -> @setState(isLoading: false)
    transitionToMain: -> @setState(view: 'main')
    transitionToPhonology: -> @setState(view: 'phonology')
    transitionToRules: -> @setState(view: 'rules')

  componentWillMount: ->
    # Set up event listeners
    VecheSCA.Event.register 'api:start', @eventHandlers.apiCallStart.bind(@)
    VecheSCA.Event.register 'api:finish', @eventHandlers.apiCallEnd.bind(@)
    VecheSCA.Event.register 'transition:main', @eventHandlers.transitionToMain.bind(@)
    VecheSCA.Event.register 'transition:phonology', @eventHandlers.transitionToPhonology.bind(@)
    VecheSCA.Event.register 'transition:rules', @eventHandlers.transitionToRules.bind(@)
    # Set up API
    VecheSCA.API.endpoint = @props.basePath
    # Set up router
    VecheSCA.Router.init(@props.basePath)

  render: ->
    loading = `<div className="loading" />` if @state.isLoading
    switch @state.view
      when 'main'
        subview = @renderMainView()
      when 'phonology'
        subview = @renderPhonologyView()
      when 'rules'
        subview = @renderRulesView()
    `<div id="sca-wrapper">
       <VecheSCA.SCAHeader />
       {loading}
       {subview}
     </div>
    `

  renderMainView: ->
    `<main>
       <div>Main View</div>
     </main>
    `

  renderPhonologyView: ->
    `<main>
       <div className="left-column">
         <VecheSCA.SCAIPAChart />
       </div>
       <div className="right-column">
         <VecheSCA.SCAPhonologyTable />
         <VecheSCA.SCAPhonemeEditor />
       </div>
     </main>
    `

  renderRulesView: ->
    `<main>
       <div className="left-column">
         <VecheSCA.SCARulesView />
       </div>
       <div className="right-column">
         <VecheSCA.SCAPhonologyTable />
         <VecheSCA.SCARuleEditor />
       </div>
     </main>
    `
