noflo = require 'noflo'
Seriously = require '/forresto-seriously'

class exports.SeriouslyEffect extends noflo.Component
  constructor: (filterName, imageInCount) ->
    if (!imageInCount?)
      imageInCount = 1
    if (!window.nofloSeriously)
      window.nofloSeriously = new Seriously()
    @seriously = window.nofloSeriously

    @seriouslyNode = @seriously.effect(filterName);

    @inPorts = {}
    @outPorts =
      filter: new noflo.Port

    if (imageInCount == 1)
      # normal filters
      @inPorts = 
        source: new noflo.Port 'object'
      # connect listener
      @inPorts.source.on('connect', @syncGraph);
      @inPorts.source.on('data', @setSource);
    else if (imageInCount == 2)
      # blending filters
      @inPorts = 
        top: new noflo.Port 'object'
        bottom: new noflo.Port 'object'
      # connect listeners
      @inPorts.top.on('connect', @syncGraph);
      @inPorts.bottom.on('connect', @syncGraph);
    else 
      throw new Error 'Seriously effects should have one or two image inputs.'

    # for p in parameters
    #   @inPorts[p]

  syncGraph: (event) =>
    # Connect another effect to this effect
    upstream = event.from.process.component.seriouslyNode
    if (upstream)
      @seriouslyNode.source = upstream
      if @outPorts.filter.isAttached()
        @outPorts.filter.connect();

  setSource: (data) =>
    # Connect DOM element to this effect
    @seriouslyNode.source = data
    if @outPorts.filter.isAttached() and !@outPorts.filter.isConnected()
      @outPorts.filter.connect();
