Array::compact ?= ->
  @filter (item) -> item?
