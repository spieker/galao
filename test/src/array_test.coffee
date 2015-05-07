require '../helper'
require '../../src/galao/array'

describe 'Array', ->

  beforeEach ->
    @array = [1, 2, 3, null]


  #########################################################
  # Method existence
  #########################################################

  it 'responds to compact()', ->
    expect(@array).to.respondTo 'compact'

  it 'responds to intersection()', ->
    expect(@array).to.respondTo 'intersection'


  #########################################################
  # Method tests
  #########################################################

  describe '::compact()', ->
    it 'returns a new array', ->
      expect(@array.compact()).to.not.equal @array

    it 'removes the null element', ->
      expect(@array.compact().indexOf(null)).to.equal -1

    it 'removes undefined element', ->
      @array = [1, 2, 3, undefined]
      expect(@array.length).to.equal 4
      expect(@array.compact().length).to.equal 3

    it 'does not alter the array if no null element is found', ->
      @array = [1, 2, 3]
      new_array = @array.compact()
      expect(new_array.length).to.equal 3
      expect(new_array.indexOf(1)).to.equal 0
      expect(new_array.indexOf(2)).to.equal 1
      expect(new_array.indexOf(3)).to.equal 2

  describe '::intersection()', ->
    beforeEach ->
      @otherArray = [2, 3, 4]

    it 'returns a new array', ->
      expect(@array.intersection(@otherArray)).to.not.equal @array

    it 'includes all elements in both arrays', ->
      intersection = @array.intersection @otherArray
      expect(2 in intersection).to.be.true
      expect(3 in intersection).to.be.true

    it 'does not include elements which are only in the base array', ->
      intersection = @array.intersection @otherArray
      expect(1 in intersection).to.be.false
      expect(null in intersection).to.be.false

    it 'does not include elements which are only in passed array', ->
      intersection = @array.intersection @otherArray
      expect(4 in intersection).to.be.false
