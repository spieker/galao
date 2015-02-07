String::capitalize ?= ->
  return '' unless @length > 0
  @[0].toUpperCase() + @[1..-1]

String::startsWith ?= (prefix) ->
  @indexOf(prefix) is 0

String::endsWith ?= (suffix) ->
  @indexOf(suffix) is @length - suffix.length

# source: http://coffeescript.org/documentation/docs/helpers.html
String::repeat ?= (n) ->
  str = this
  res = ''
  while n > 0
    res += str if n & 1
    n >>>= 1
    str += str
  res
