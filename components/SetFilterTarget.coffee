noflo = require 'noflo'
Seriously = require '/forresto-seriously'

class SetFilterTarget extends noflo.Component
  constructor: () ->
    if (!window.nofloSeriously)
      window.nofloSeriously = new Seriously()
    @seriously = window.nofloSeriously

    @inPorts = 
      source: new noflo.Port 'object'
      target: new noflo.Port 'object'

    @inPorts.source.on('connect', @syncSource);
    # @inPorts.source.on('disconnect', @unsyncSource);
    @inPorts.target.on('data', @setTarget);

  syncSource: (event) =>
    upstream = event.from.process.component.seriouslyNode
    if (!upstream)
      return;
    if (@seriouslyNode)
      @seriouslyNode.source = upstream
      @seriouslyGo()
    else
      # Connect later
      @upstream = upstream

  # unsyncSource: (event) =>
  #   @seriouslyNode.source = null
  #   if @seriouslyStarted 
  #     @seriously.stop()
  #     @seriouslyStarted = false

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