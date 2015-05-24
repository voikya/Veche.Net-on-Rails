class @Utils
  @serialize: (data) ->
    ("#{encodeURIComponent(k)}=#{encodeURIComponent(data[k])}" for k of data).join("&")

  @classSet: (classes...) ->
    (c for c in classes when c).join(' ')

  @objectIsEmpty: (obj) ->
    isEmpty = true
    for own k of obj
      isEmpty = false if obj[k]
    isEmpty
