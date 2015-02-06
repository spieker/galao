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
