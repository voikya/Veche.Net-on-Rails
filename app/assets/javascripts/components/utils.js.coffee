class @Utils
  # Serialize object for Ajax calls
  @serialize: (data) ->
    ("#{encodeURIComponent(k)}=#{encodeURIComponent(data[k])}" for k of data).join("&")

  # Convert a list of class names into a single class string
  # (convenient if generated using methods that may return falsy values)
  @classSet: (classes...) ->
    (c for c in classes when c).join(' ')

  # Convert a dashed/underscored string to title case
  @titleize: (str) ->
    str.split(/[-_ ]/).map((part) -> part.charAt(0).toUpperCase() + part.slice(1)).join(" ")

  # True if the provided object has no data in it, false otherwise
  @objectIsEmpty: (obj) ->
    isEmpty = true
    for own k of obj
      isEmpty = false if obj[k]
    isEmpty

  # Convert basic lexicon markup into an array of strings and React components
  @markupToHtml: (str) ->
    componentArray = str.split(/(?:\{\{|\}\})/g).map @_formatComment
    componentArray = componentArray.map( (el) =>
      if Object.prototype.toString.call(el) == "[object String]"
        el.split(/\+\+/g).map @_formatLink
      else
        el
    )
    [].concat.apply([], componentArray)

  # Run in next event loop
  @next: (func) ->
    setTimeout(func, 1)

  ### PRIVATE HELPERS ###

  # Helper method to convert {{coments}} into span elements
  @_formatComment: (string, idx) ->
    if not (idx % 2)
      string
    else
      React.createElement('span', {className: 'comment'}, string)

  # Helper method to convert ++xrefs++ into Lexicon.Link components
  @_formatLink: (string, idx) ->
    if not (idx % 2)
      string
    else
      React.createElement(Lexicon.Link,
        path: "/entries/#{string}"
        handler: -> Lexicon.API.getEntry(string)
        content: string.replace(/^([^0-9]*)([0-9]*)$/, '$1<sup>$2</sup>')
      )
