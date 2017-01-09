noflo = require 'noflo'

unless noflo.isBrowser()
  chai = require 'chai'
  path = require 'path'
  baseDir = path.resolve __dirname, '../'
else
  baseDir = 'noflo-seriously'

describe 'SetFilterSource component', ->
  c = null
  source = null
  out = null
  before (done) ->
    @timeout 4000
    return @skip() unless noflo.isBrowser()
    loader = new noflo.ComponentLoader baseDir
    loader.load 'seriously/SetFilterSource', (err, instance) ->
      return done err if err
      c = instance
      source = noflo.internalSocket.createSocket()
      c.inPorts.source.attach source
      done()
  beforeEach ->
    out = noflo.internalSocket.createSocket()
    c.outPorts.out.attach out
  afterEach ->
    c.outPorts.out.detach out

  describe 'when instantiated', ->
    before ->
      return @skip() unless noflo.isBrowser()
    it 'should have a "source" inport', (done) ->
      chai.expect(c.inPorts.source).to.be.an 'object'
      done()
