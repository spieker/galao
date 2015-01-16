String::capitalize ?= ->
  @[0].toUpperCase() + @[1..-1]
