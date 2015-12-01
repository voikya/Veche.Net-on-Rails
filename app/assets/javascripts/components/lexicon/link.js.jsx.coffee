@Lexicon ?= {}

@Lexicon.Link = React.createClass
  render: ->
    path = "#{Lexicon.Router.basePath}#{@props.path}"
    content = __html: @props.content
    transition = @transition
    `<a href={path} onClick={transition} dangerouslySetInnerHTML={content} />`

  transition: (evt) ->
    evt.preventDefault()
    Lexicon.Router.transition @props.path
    @props.handler()
