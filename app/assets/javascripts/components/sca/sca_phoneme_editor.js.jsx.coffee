@VecheSCA ?= {}

@VecheSCA.SCAPhonemeEditor = React.createClass
  getInitialState: ->
    symbol: null
    features: {}
    saved: true
    persisted: true

  componentWillMount: ->
    VecheSCA.Event.register 'api:phoneme:response', @receivePhoneme
    VecheSCA.Event.register 'feature:apply', @receiveFeature

  render: ->
    if @state.symbol
      symbol = @state.symbol
      features = @state.features
      update = @setFeatureState
      setSymbol = (symbol) -> @setState(symbol: symbol, saved: false)
      saved = @state.saved
      persisted = @state.persisted
      saveCallback = @save
      `<div id="phoneme-editor">
         <VecheSCA.SCASaveView saved={saved} saveCallback={saveCallback} />
         <input type="text" className="display"
                            value={symbol}
                            readOnly={persisted}
                            onChange={setSymbol} />
         <h2>Segmental Features</h2>
         <h3>Class Features</h3>
         <VecheSCA.SCAFeatureCheckbox feature="syllabic"
                                      value={features.syllabic}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="consonantal"
                                      value={features.consonantal}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="vocalic"
                                      value={features.vocalic}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="approximant"
                                      value={features.approximant}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="sonorant"
                                      value={features.sonorant}
                                      updateCallback={update} />
         <h3>Manner Features</h3>
         <VecheSCA.SCAFeatureCheckbox feature="approximant"
                                      value={features.approximant}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="sonorant"
                                      value={features.sonorant}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="continuant"
                                      value={features.continuant}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="nasal"
                                      value={features.nasal}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="strident"
                                      value={features.strident}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="sibilant"
                                      value={features.sibilant}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="lateral"
                                      value={features.lateral}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="delayed-release"
                                      value={features['delayed-release']}
                                      updateCallback={update} />
         <h3>Place Features</h3>
         <VecheSCA.SCAFeatureCheckbox feature="labial"
                                      value={features.labial}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="coronal"
                                      value={features.coronal}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="anterior"
                                      value={features.anterior}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="retroflex"
                                      value={features.retroflex}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="dorsal"
                                      value={features.dorsal}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="palatal"
                                      value={features.palatal}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="uvular"
                                      value={features.uvular}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="radical"
                                      value={features.radical}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="laryngeal"
                                      value={features.laryngeal}
                                      updateCallback={update} />
         <h3>Other Consonantal Features and Secondary Articulations</h3>
         <VecheSCA.SCAFeatureCheckbox feature="voice"
                                      value={features.voice}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="aspirated"
                                      value={features.aspirated}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="breathy"
                                      value={features.breathy}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="creaky"
                                      value={features.creaky}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="labialized"
                                      value={features.labialized}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="palatalized"
                                      value={features.palatalized}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="velarized"
                                      value={features.velarized}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="pharyngealized"
                                      value={features.pharyngealized}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="click"
                                      value={features.click}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="ejective"
                                      value={features.ejective}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="implosive"
                                      value={features.implosive}
                                      updateCallback={update} />
         <h3>Vocalic Features</h3>
         <VecheSCA.SCAFeatureCheckbox feature="high"
                                      value={features.high}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="low"
                                      value={features.low}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="front"
                                      value={features.front}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="back"
                                      value={features.back}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="rounded"
                                      value={features.rounded}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="breathy"
                                      value={features.breathy}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="creaky"
                                      value={features.creaky}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="nasalized"
                                      value={features.nasalized}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="full"
                                      value={features.full}
                                      updateCallback={update} />
         <h3>Suprasegmental Features</h3>
         <VecheSCA.SCAFeatureCheckbox feature="stress"
                                      value={features.stress}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="long"
                                      value={features.long}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="length"
                                      value={features.length}
                                      customValue="true"
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="tone"
                                      value={features.tone}
                                      customValue="true"
                                      updateCallback={update} />
         <h3>Miscellaneous Classes</h3>
         <VecheSCA.SCAFeatureCheckbox feature="pulmonic"
                                      value={features.pulmonic}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="plosive"
                                      value={features.plosive}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="affricate"
                                      value={features.affricate}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="fricative"
                                      value={features.fricative}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="liquid"
                                      value={features.liquid}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="rhotic"
                                      value={features.rhotic}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="glide"
                                      value={features.glide}
                                      updateCallback={update} />
         <VecheSCA.SCAFeatureCheckbox feature="diphthong"
                                      value={features.diphthong}
                                      updateCallback={update} />
       </div>
      `
    else
      `<div id="phoneme-editor">
         <p>Please select a symbol above to edit, or an IPA symbol at left to create a new symbol.</p>
       </div>
      `

  receivePhoneme: (data) ->
    @setState(symbol: data.symbol)
    @setState(features: data.features)
    @setState(saved: !!data.language)
    @setState(persisted: !!data.language)

  receiveFeature: (data) ->
    if data.glyph
      @setState(symbol: @state.symbol + data.glyph.replace("◌", ""))
    if data.feature
      features = @state.features
      if data.position is 'after'
        @setState(features: Object.merge(features, @parseFeatures(data.feature)))
      else
        newFeature = VecheSCA.VecheSCA.parseFeatures(data.feature)
        for k of newFeature
          features[k] += newFeature[k]
        @setState(features: features)
    @setState(saved: false)

  parseFeatures: (featureString) ->
    features = {}
    featureList = featureString.replace(/\s+/g, '')
                               .replace(/[\[\]]/g, '')
                               .split(',')
                               .forEach (f) ->
      switch f[0]
        when '+'
          features[f.substr(1)] = true
        when '-'
          features[f.substr(1)] = false
        else
          split = f.split(':')
          name = split[0]
          value = split[1]
          features[name] = value
    features

  setFeatureState: (feature, value) ->
    features = @state.features
    features[feature] = value
    @setState(features: features, saved: false)

  save: ->
    phoneme =
      symbol: @state.symbol
      features: @state.features
    if @state.persisted
      VecheSCA.API.savePhoneme(phoneme)
    else
      VecheSCA.API.createPhoneme(phoneme)
