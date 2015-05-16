@Lexicon ?= {}

@Lexicon.AlphabetView = React.createClass
  render: ->
    letterNodes = @getLetterNodes()
    `<nav>
      <table className="alphabet">
        <tbody>
          <tr>
            {letterNodes}
          </tr>
        </tbody>
      </table>
     </nav>
    `

  getLetterNodes: ->
    callback = @handleClick
    @props.alphabet.split(' ').map (l) =>
      `<td><a onClick={callback.bind(this, l)}>{l}</a></td>`

  handleClick: (letter) ->
    queryOpts = {}
    queryOpts[@props.lexemeField] = "#{letter}*"
    Lexicon.API.advancedSearch(queryOpts)
