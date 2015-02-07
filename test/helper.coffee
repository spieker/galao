# Set environment to test
process.env.NODE_ENV = 'test'

global.chai   = require('chai')
global.expect = chai.expect
global.Sinon  = require 'sinon'

chai.use require('sinon-chai')

# Set up a Sinon Sandbox for each test
beforeEach ->
  global.sinon = Sinon.sandbox.create()

afterEach ->
  sinon.restore()
