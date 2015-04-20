require '../helper'
require '../../src/galao/number'

describe 'Number', ->

  beforeEach ->
    @number = Math.floor( Math.random() * 100 + 1 )


  #########################################################
  # Method existence
  #########################################################

  it 'responds to second()', ->
    expect(@number).to.respondTo 'second'

  it 'responds to seconds()', ->
    expect(@number).to.respondTo 'seconds'

  it 'responds to minute()', ->
    expect(@number).to.respondTo 'minute'

  it 'responds to minutes()', ->
    expect(@number).to.respondTo 'minutes'

  it 'responds to hour()', ->
    expect(@number).to.respondTo 'hour'

  it 'responds to hours()', ->
    expect(@number).to.respondTo 'hours'

  it 'responds to day()', ->
    expect(@number).to.respondTo 'day'

  it 'responds to days()', ->
    expect(@number).to.respondTo 'days'

  it 'responds to even()', ->
    expect(@number).to.respondTo 'even'

  it 'responds to odd()', ->
    expect(@number).to.respondTo 'odd'


  #########################################################
  # Method tests
  #########################################################

  describe '::second()', ->
    it 'calls seconds on itself', ->
      spy = sinon.spy Number::, 'seconds'
      @number.second()
      expect(spy).to.be.called

  describe '::seconds()', ->
    it 'multiplies number by 1000', ->
      expect(@number.seconds()).to.be.equal @number * 1000

  describe '::minute()', ->
    it 'calls minutes on itself', ->
      spy = sinon.spy Number::, 'minutes'
      @number.minute()
      expect(spy).to.be.called

  describe '::minutes()', ->
    it 'reuses the seconds method', ->
      spy = sinon.spy Number::, 'seconds'
      @number.minutes()
      expect(spy).to.be.called

    it 'multiplies number value in seconds by 60', ->
      expect(@number.minutes()).to.be.equal @number.seconds() * 60

  describe '::hour()', ->
    it 'calls hours on itself', ->
      spy = sinon.spy Number::, 'hours'
      @number.hour()
      expect(spy).to.be.called

  describe '::hours()', ->
    it 'reuses the minutes method', ->
      spy = sinon.spy Number::, 'minutes'
      @number.hours()
      expect(spy).to.be.called

    it 'multiplies number value in minutes by 60', ->
      expect(@number.hours()).to.be.equal @number.minutes() * 60

  describe '::day()', ->
    it 'calls days on itself', ->
      spy = sinon.spy Number::, 'days'
      @number.day()
      expect(spy).to.be.called

  describe '::days()', ->
    it 'reuses the hours method', ->
      spy = sinon.spy Number::, 'hours'
      @number.days()
      expect(spy).to.be.called

    it 'multiplies number value in hours by 24', ->
      expect(@number.days()).to.be.equal @number.hours() * 24

  describe '::even()', ->
    it 'is true if the number is 0', ->
      @number = 0
      expect(@number.even()).to.be.equal true

    it 'is true if the number is even and positive', ->
      @number = 8
      expect(@number.even()).to.be.equal true

    it 'is true if the number is even and negative', ->
      @number = -10
      expect(@number.even()).to.be.equal true

    it 'is false if the number is odd', ->
      @number = 5
      expect(@number.even()).to.be.equal false

    it 'is false if the number is odd and negative', ->
      @number = -21
      expect(@number.even()).to.be.equal false

  describe '::odd()', ->
    it 'reuses the even method', ->
      spy = sinon.spy Number::, 'even'
      @number.odd()
      expect(spy).to.be.called

    it 'is false if the number is even', ->
      @number = 8
      expect(@number.odd()).to.be.equal false

    it 'is true if the number is odd', ->
      @number = 5
      expect(@number.odd()).to.be.equal true
