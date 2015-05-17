@Lexicon ?= {}
@Lexicon.Formatters ?= {}

@Lexicon.Formatters.Derivative = React.createClass
  render: ->
    className = @props.data.name
    `<div className={className}>
       <fieldset>
         <legend>Derived Words</legend>
         {this.renderDerivatives()}
       </fieldset>
     </div>
    `

  renderDerivatives: ->
    @props.data.value.map (word) ->
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
