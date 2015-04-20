# Number to time conversions
Number::second ?= ->
  @seconds()

Number::seconds ?= ->
  this * 1000

Number::minute ?= ->
  @minutes()

Number::minutes ?= ->
  @seconds() * 60

Number::hour ?= ->
  @hours()

Number::hours ?= ->
  @minutes() * 60

Number::day ?= ->
  @days()

Number::days ?= ->
  @hours() * 24

Number::even ?= ->
  this%2==0

Number::odd ?= ->
  not @even()
