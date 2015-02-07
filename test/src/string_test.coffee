require '../helper'
require '../../src/galao/string'

describe 'String', ->

  beforeEach ->
    @string = 'teststring'


  #########################################################
  # Method existence
  #########################################################

  it 'responds to capitalize()', ->
    expect(@string).to.respondTo 'capitalize'

  it 'responds to startsWith()', ->
    expect(@string).to.respondTo 'startsWith'

  it 'responds to endsWith()', ->
    expect(@string).to.respondTo 'endsWith'

  it 'responds to repeat()', ->
    expect(@string).to.respondTo 'repeat'


  #########################################################
  # Method tests
  #########################################################

  describe '::capitalize()', ->
    it 'transforms first character to uppercase', ->
      expect(@string.capitalize()).to.equal 'Teststring'

    it 'does not alter an already capitalized string', ->
      @string = 'Teststring'
      expect(@string.capitalize()).to.equal 'Teststring'

    it "does not change other character's cases", ->
      @string = 'testString'
      expect(@string.capitalize()).to.equal 'TestString'

    it 'should not do anything for an empty string', ->
      @string = ''
      expect(@string.capitalize()).to.equal ''

  describe '::startsWith()', ->
    it 'returns true if string starts with given character', ->
      expect(@string.startsWith 't').to.be.true

    it 'returns false if string does not start with given character', ->
      expect(@string.startsWith 'f').to.be.false

    it 'returns true if string starts with given string', ->
      expect(@string.startsWith 'test').to.be.true

    it 'returns false if string does not start with given string', ->
      expect(@string.startsWith 'prefix').to.be.false

  describe '::endsWith()', ->
    it 'returns true if string ends with given character', ->
      expect(@string.endsWith 'g').to.be.true

    it 'returns false if string does not end with given character', ->
      expect(@string.endsWith 't').to.be.false

    it 'returns true if string ends with given string', ->
      expect(@string.endsWith 'string').to.be.true

    it 'returns false if string does not end with given string', ->
      expect(@string.endsWith 'suffix').to.be.false

  describe '::repeat()', ->
    it 'repeats the string n times', ->
      expect(@string.repeat(2)).to.equal 'teststringteststring'

    it 'does not do anything if given n is null', ->
      expect(@string.repeat(null)).to.equal ''

    it 'does not do anything if n is omitted', ->
      expect(@string.repeat()).to.equal ''

    it 'should not do anything for an empty string', ->
      @string = ''
      expect(@string.repeat(2)).to.equal ''
