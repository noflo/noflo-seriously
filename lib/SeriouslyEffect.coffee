noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'

class exports.SeriouslyEffect extends noflo.Component

  constructor: (filterName, imageInCount) ->
    if (!window.nofloSeriously)
      window.nofloSeriously = new Seriously()
    @seriously = window.nofloSeriously
    @sources = {}

    @seriouslyNode = @seriously.effect(filterName)

    effectInfo = @seriously.effects()[filterName]
    if effectInfo.description?.length
      @description = effectInfo.description

    @inPorts = {}
    @outPorts =
      out: new noflo.ArrayPort 'object'

    for own key, input of effectInfo.inputs
      type = input.type
      if type is 'image'
        @inPorts[key] = new noflo.Port 'object'
        @inPorts[key].on 'data', @syncGraph.bind @, key
        @inPorts[key].on 'disconnect', @unsyncGraph.bind @, key
      else
        @inPorts[key] = new noflo.Port type
        @inPorts[key].on 'data', @setParam.bind(@,key)

  syncGraph: (inport, upstream) ->
    # Connect another effect to this effect
    return unless upstream
    @sources[inport] = upstream
    @seriouslyNode[inport] = upstream
    if @outPorts.out.isAttached()
      @outPorts.out.send @seriouslyNode

  unsyncGraph: (inport) ->
    @seriouslyNode[inport] = null
    delete @sources[inport]
    if @outPorts.out.isAttached()
      @outPorts.out.disconnect()

  setParam: (key, data) -> # this is bound, so use -> not =>
    @seriouslyNode[key] = data

  shutdown: ->
    for key, val of @sources
      @unsyncGraph key