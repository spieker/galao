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
