# Number to time conversions
Number::seconds ?= ->
  this * 1000

Number::minutes ?= ->
  @seconds() * 60

Number::hours ?= ->
  @minutes() * 60
