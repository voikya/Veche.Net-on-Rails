@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Derivative = React.createClass
  componentWillMount: ->
    @setState(content: @props.data.value)

  componentWillReceiveProps: (nextProps) ->
    @setState(content: nextProps.data.value)

  render: ->
    editable = @props.isEditing
    className = Utils.classSet(@props.data.name, 'editable' if editable)
    init = @initializeWithEmptyData
    `<div className={className} onClick={init}>
       {this.renderDerivativeFieldset()}
     </div>
    `

  renderDerivativeFieldset: ->
    if @state.content
      `<fieldset>
         <legend>Derived Words</legend>
         {this.renderDerivatives()}
       </fieldset>
      `

  renderDerivatives: ->
    if @props.isEditing
      @state.content.map (word, idx) =>
        update = @update.bind(@, idx)
        keydown = @handleKeydown.bind(@, idx)
        `<table className='editable-table' onKeyDown={keydown}>
           <tr>
             <th>Form</th>
             <td contentEditable={true} onBlur={update.bind(this, 'word')}>{word.word}</td>
           </tr>
           <tr>
             <th>Transliteration</th>
             <td contentEditable={true} onBlur={update.bind(this, 'transliteration')}>{word.transliteration}</td>
           </tr>
           <tr>
             <th>Pronunciation</th>
             <td contentEditable={true} onBlur={update.bind(this, 'pronunciation')}>{word.pronunciation}</td>
           </tr>
           <tr>
             <th>Part of Speech</th>
             <td contentEditable={true} onBlur={update.bind(this, 'transliteration')}>{word.partOfSpeech}</td>
           </tr>
           <tr>
             <th>Definition</th>
             <td contentEditable={true} onBlur={update.bind(this, 'definition')}>{word.definition}</td>
           </tr>
           <tr>
             <th>Notes</th>
             <td contentEditable={true} onBlur={update.bind(this, 'notes')}>{word.notes}</td>
           </tr>
         </table>
        `
    else
      @state.content.map (word) ->
        form = `<div className="word">{word.word}</div>` if word.word
        transliteration = `<div className="transliteration">{word.transliteration}</div>` if word.transliteration
        pronunciation = `<div className="pronunciation">{word.pronunciation}</div>` if word.pronunciation
        partOfSpeech = `<div className="part-of-speech">{word.partOfSpeech}</div>` if word.partOfSpeech
        definition = `<div className="definition">{word.definition}</div>` if word.definition
        notes = `<div className="notes">{word.notes}</div>` if word.notes
        `<div className="derivative-word">
           {form}
           {transliteration}
           {pronunciation}
           {partOfSpeech}
           {definition}
           {notes}
         </div>
        `

  handleKeydown: (idx, evt) ->
    if evt.which == 13 # Enter
      evt.preventDefault()
      content = @state.content
      content.splice(idx + 1, 0, {})
      @setState(content: content)

  initializeWithEmptyData: ->
    unless @state.content
      @setState(content: [{}])

  update: (idx, field, evt) ->
    newContent = @state.content
    newContent[idx][field] = evt.target.innerHTML.trim()
    if Utils.objectIsEmpty(newContent[idx])
      newContent.splice(idx, 1)
    newContent = null unless newContent.length
    @setState(content: newContent)
