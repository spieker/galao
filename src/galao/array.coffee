Array::compact ?= ->
  @filter (item) -> item?

Array::intersection ?= (other) ->
  hashMap = {}

  if @length <= other.length
    a1 = this
    a2 = other
  else
    a1 = other
    a2 = this

  hashMap[i] = 1 for i in a1

  return (i for i in a2 when hashMap[i] and hashMap[i] == 1)
