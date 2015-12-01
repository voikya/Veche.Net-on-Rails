@VecheSCA ?= {}

@VecheSCA.SCASaveView = React.createClass
  render: ->
    if @props.saved
      @renderAsSaved()
    else
      @renderAsUnsaved()

  renderAsSaved: ->
    `<div className="save-view" data-state="saved">
       <div className="save-status">
         Saved
       </div>
     </div>
    `

  renderAsUnsaved: ->
    save = @props.saveCallback
    `<div className="save-view" data-state="unsaved">
       <button onClick={save}>Save</button>
       <div className="save-status">
         Unsaved
       </div>
     </div>
    `
