noflo = require 'noflo'
Seriously = require '/forresto-seriously'

class SeriouslyEffect extends noflo.Component
  constructor: () ->
    if (!window.nofloSeriously)
      window.nofloSeriously = new Seriously()
    @seriously = window.nofloSeriously

    @inPorts = 
      source: new noflo.Port 'object'
      target: new noflo.Port 'object'

    @inPorts.source.on('addEdge', @syncSource);
    @inPorts.target.on('addEdge', @syncTarget);

  syncSource: (event) =>
    console.log event
    # if (@seriouslyNode)
    #   @seriouslyNode.source = 

  syncTarget: (event) =>
    console.log event
    # @seriouslyNode = @seriously.target();

exports.getComponent = -> new SeriouslyEffect