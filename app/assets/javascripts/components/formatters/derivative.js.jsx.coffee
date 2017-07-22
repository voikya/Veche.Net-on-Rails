@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Derivative = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    if @props.isEditing
      @renderForEditing()
    else
      @renderForReading()

  renderForReading: ->
    name = @props.data.name
    words = @state.content.map (word, idx) ->
      form = `<div className="word">{word.word}</div>` if word.word
      transliteration = `<div className="transliteration">{word.transliteration}</div>` if word.transliteration
      pronunciation = `<div className="pronunciation">{word.pronunciation}</div>` if word.pronunciation
      partOfSpeech = `<div className="part-of-speech">{word.partOfSpeech}</div>` if word.partOfSpeech
      definition = `<div className="definition">{word.definition}</div>` if word.definition
      notes = `<div className="notes">{word.notes}</div>` if word.notes
      `<div key={idx} className="derivative-word">
         {form}
         {transliteration}
         {pronunciation}
         {partOfSpeech}
         {definition}
         {notes}
       </div>
      `
    `<div className={name}>
       <fieldset>
         <legend>Derived Words</legend>
         {words}
       </fieldset>
     </div>
    `

  renderForEditing: ->
    className = Utils.classSet(@props.data.name, 'editable', 'empty' unless @state.content)
    if @state.content
      words = @state.content.map (word, idx) =>
        update = @update.bind(@, idx)
        keydown = @handleKeydown.bind(@, idx)
        `<table className='editable-table' onKeyDown={keydown} key={idx}>
           <tbody>
             <tr>
               <th>Form</th>
               <td>
                 <input type="text" value={word.word} onChange={update.bind(this, 'word')} />
               </td>
             </tr>
             <tr>
               <th>Transliteration</th>
               <td>
                 <input type="text" value={word.transliteration} onChange={update.bind(this, 'transliteration')} />
               </td>
             </tr>
             <tr>
               <th>Pronunciation</th>
               <td>
                 <input type="text" value={word.pronunciation} onChange={update.bind(this, 'pronunciation')} />
               </td>
             </tr>
             <tr>
               <th>Part of Speech</th>
               <td>
                 <input type="text" value={word.partOfSpeech} onChange={update.bind(this, 'partOfSpeech')} />
               </td>
             </tr>
             <tr>
               <th>Definition</th>
               <td>
                 <input type="text" value={word.definition} onChange={update.bind(this, 'definition')} />
               </td>
             </tr>
             <tr>
               <th>Notes</th>
               <td>
                 <input type="text" value={word.notes} onChange={update.bind(this, 'notes')} />
               </td>
             </tr>
           </tbody>
         </table>
        `
      `<div className={className}>
         {words}
       </div>
      `
    else
      placeholder = Utils.titleize(@props.data.name)
      initWithEmptyObject = @initWithEmptyObject
      `<div className={className}>
         <input type="text" placeholder={placeholder} onClick={initWithEmptyObject} />
       </div>
      `

  emptyObject: ->
    word: ""
    transliteration: ""
    pronunciation: ""
    partOfSpeech: ""
    definition: ""
    notes: ""

  initWithEmptyObject: ->
    @setState(content: [@emptyObject()])

  handleKeydown: (idx, evt) ->
    if evt.which == 13 # Enter
      evt.preventDefault()
      content = @state.content
      content.splice(idx + 1, 0, @emptyObject())
      @setState(content: content)

  update: (idx, field, evt) ->
    newContent = @state.content
    newContent[idx][field] = evt.target.value.trim()
    if Utils.objectIsEmpty(newContent[idx])
      newContent.splice(idx, 1)
    newContent = null unless newContent.length
    @setState(content: newContent)
