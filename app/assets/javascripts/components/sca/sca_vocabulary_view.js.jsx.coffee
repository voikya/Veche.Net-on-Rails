@VecheSCA ?= {}

@VecheSCA.SCAVocabularyView = React.createClass
  getInitialState: ->
    input: [""]
    output: null

  componentWillMount: ->
    VecheSCA.Event.register 'api:run:response', @receiveRun

  receiveRun: (data) ->
    @setState(output: data)

  render: ->
    words = @renderInputField()
    output = @renderOutput()
    run = @runSoundChanges
    `<div>
       <div className="vocab-input">
         <ul>
           {words}
         </ul>
         <button onClick={run}>Run</button>
       </div>
       <div className="vocab-output">
         {output}
       </div>
     </div>
    `

  renderInputField: ->
    words = []
    for word, idx in @state.input
      keydown = @handleKeydown.bind(@, idx)
      change = @updateInput.bind(@, idx)
      words.push(`<li><input type="text"
                             value={word}
                             onKeyDown={keydown}
                             onChange={change} /></li>`)
    words

  renderOutput: ->
    if @state.output
      output = @state.output
      words = @renderWord(w) for w in output
      `<ul>
         {words}
       </ul>
      `

  renderWord: (word) ->
    `<li>{word.original} → {word.final}</li>`

  handleKeydown: (idx, evt) ->
    switch evt.which
      when 13 # Enter
        evt.preventDefault()
        input = @state.input
        input.splice(idx + 1, 0, "")
        @setState(input: input)
      when 8 # Backspace
        if React.findDOMNode(@).querySelectorAll('li')[idx].textContent.length == 0
          evt.preventDefault()
          input = @state.input
          input.splice(idx, 1)
          input = [""] unless input.length
          @setState(input: input)

  updateInput: (idx, evt) ->
    input = @state.input
    input[idx] = evt.target.value
    @setState(input: input)

  runSoundChanges: ->
    VecheSCA.API.runSoundChanges(@state.input)
