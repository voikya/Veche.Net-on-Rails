@VecheSCA ?= {}

@VecheSCA.VecheSCA = React.createClass
  getInitialState: ->
    isLoading: false

  eventHandlers:
    apiCallStart: -> @setState(isLoading: true)
    apiCallEnd: -> @setState(isLoading: false)

  componentWillMount: ->
    # Set up API
    VecheSCA.API.endpoint = @props.basePath
    # Set up router
    VecheSCA.Router.init(@props.basePath)

  render: ->
    loading = `<div className="loading" />` if @state.isLoading
    `<div id="sca-wrapper">
       <VecheSCA.SCAHeader />
       {loading}
       <main>
         <div className="left-column">
           <VecheSCA.SCAIPAChart />
         </div>
         <div className="right-column">
           <VecheSCA.SCAPhonologyTable />
           <VecheSCA.SCAPhonemeEditor />
         </div>
       </main>
     </div>
    `
