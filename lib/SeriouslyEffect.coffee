noflo = require 'noflo'
Seriously = require 'seriously'

class exports.SeriouslyEffect extends noflo.Component
  constructor: (filterName, imageInCount) ->
    if (!imageInCount?)
      imageInCount = 1
    if (!window.nofloSeriously)
      window.nofloSeriously = new Seriously()
    @seriously = window.nofloSeriously

    @seriouslyNode = @seriously.effect(filterName);

    console.log "@seriouslyNode", @seriouslyNode

    @inPorts = {}
    @outPorts =
      filter: new noflo.Port

    if (imageInCount == 1)
      # normal filters
      @inPorts = 
        source: new noflo.Port 'object'
      # connect listener
      @inPorts.source.on('addEdge', @syncGraph);
    else if (imageInCount == 2)
      # blending filters
      @inPorts = 
        top: new noflo.Port 'object'
        bottom: new noflo.Port 'object'
      # connect listeners
      @inPorts.top.on('addEdge', @syncGraph);
      @inPorts.bottom.on('addEdge', @syncGraph);
    else 
      throw new Error 'Seriously effects should have one or two image inputs.'

    # for p in parameters
    #   @inPorts[p]

  syncGraph: (event) =>
    console.log event