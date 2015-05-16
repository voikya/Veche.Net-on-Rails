@Lexicon ?= {}

@Lexicon.LexiconHeader = React.createClass
  render: ->
    name = @props.language.name
    alphabet = @props.language.alphabet
    lexemeField = @props.lexemeField
    `<header>
       <h1>{name} Lexicon</h1>
       <Lexicon.AlphabetView alphabet={alphabet} lexemeField={lexemeField} />
       <Lexicon.Search />
     </header>
    `
