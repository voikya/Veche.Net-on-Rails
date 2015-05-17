class @Utils
  @serialize: (data) ->
    ("#{encodeURIComponent(k)}=#{encodeURIComponent(data[k])}" for k of data).join("&")
