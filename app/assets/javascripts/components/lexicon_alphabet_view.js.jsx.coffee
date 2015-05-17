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
    @props.alphabet.split(' ').map (l) =>
      callback = @handleClick.bind(@, l)
      path = "/entries?word=#{l}*"
      `<td>
         <Lexicon.Link path={path} handler={callback} content={l} />
       </td>
      `

  handleClick: (letter) ->
    queryOpts = {}
    queryOpts[@props.lexemeField] = "#{letter}*"
    Lexicon.API.advancedSearch(queryOpts)
