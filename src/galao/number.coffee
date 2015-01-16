# Number to time conversions
Number::second ?= ->
  this * 1000

Number::seconds ?= ->
  this * 1000

Number::minute ?= ->
  @seconds() * 60

Number::minutes ?= ->
  @seconds() * 60

Number::hour ?= ->
  @minutes() * 60

Number::hours ?= ->
  @minutes() * 60
