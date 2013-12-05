noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'

class SetFilterTarget extends noflo.Component

  constructor: () ->
    if (!window.nofloSeriously)
      window.nofloSeriously = new Seriously()
    @seriously = window.nofloSeriously

    @inPorts = 
      source: new noflo.ArrayPort 'object' # seriously
      target: new noflo.Port 'object'

    @inPorts.source.on('data', @syncSource);
    @inPorts.source.on('disconnect', @unsyncSource);
    @inPorts.target.on('data', @setTarget);

  syncSource: (upstream) =>
    return unless upstream
    if @seriouslyNode
      @seriouslyNode.source = upstream
      @seriouslyGo()
    else
      # Connect later
      @upstream = upstream

  unsyncSource: (event) =>
    # TODO noflo bug?
    if @seriouslyStarted 
      @seriously.stop()
      @seriouslyStarted = false

  setTarget: (data) =>
    @seriouslyNode = @seriously.target(data);
    if @upstream
      @seriouslyNode.source = @upstream
      @seriouslyGo()
      @upstream = null

  seriouslyGo: () =>
    if (!@seriouslyStarted)
      @seriously.go()
      @seriouslyStarted = true

exports.getComponent = -> new SetFilterTarget