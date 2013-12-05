noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'

class exports.SeriouslyEffect extends noflo.Component
  constructor: (filterName, imageInCount) ->
    if (!window.nofloSeriously)
      window.nofloSeriously = new Seriously()
    @seriously = window.nofloSeriously

    @seriouslyNode = @seriously.effect(filterName)

    effectInfo = @seriously.effects()[filterName]
    if effectInfo.description?.length
      @description = effectInfo.description

    @inPorts = {}
    @outPorts =
      filter: new noflo.Port 'seriously'

    for own key, input of effectInfo.inputs
      type = input.type
      if type is 'image'
        type = 'seriously'
      @inPorts[key] = new noflo.Port type
      if type is 'seriously'
        @inPorts[key].on 'connect', @syncGraph
        @inPorts[key].on 'data', @setSource
      else
        #TODO key
        @inPorts[key].on 'data', @setParam.bind(@,key)

  syncGraph: (event) =>
    # Connect another effect to this effect
    upstream = event.from.process.component.seriouslyNode
    if (upstream)
      @seriouslyNode[event.to.port] = upstream
      if @outPorts.filter.isAttached()
        @outPorts.filter.connect();

  setSource: (data) =>
    # Connect DOM element to this effect
    @seriouslyNode.source = data
    if @outPorts.filter.isAttached() and !@outPorts.filter.isConnected()
      @outPorts.filter.connect();

  setParam: (key, data) -> # this is bound, so use -> not =>
    @seriouslyNode[key] = data
