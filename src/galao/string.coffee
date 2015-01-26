String::capitalize ?= ->
  @[0].toUpperCase() + @[1..-1]

String::startsWith ?= (prefix) ->
  @indexOf(prefix) is 0
