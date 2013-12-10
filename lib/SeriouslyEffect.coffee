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
      seriouslyPort = key
      nofloPort = seriouslyPort.toLowerCase()

      type = input.type
      if type is 'image'
        @inPorts[nofloPort] = new noflo.Port 'object'
        @inPorts[nofloPort].on 'data', @syncGraph.bind @, nofloPort, seriouslyPort
        @inPorts[nofloPort].on 'disconnect', @unsyncGraph.bind @, nofloPort, seriouslyPort
      else
        @inPorts[nofloPort] = new noflo.Port type
        @inPorts[nofloPort].on 'data', @setParam.bind @, nofloPort, seriouslyPort

  syncGraph: (nofloPort, seriouslyPort, upstream) ->
    # Connect another effect to this effect
    return unless upstream
    @sources[nofloPort] = upstream
    @seriouslyNode[seriouslyPort] = upstream
    if @outPorts.out.isAttached()
      @outPorts.out.send @seriouslyNode

  unsyncGraph: (nofloPort, seriouslyPort) ->
    @seriouslyNode[seriouslyPort] = null
    delete @sources[nofloPort]
    if @outPorts.out.isAttached()
      @outPorts.out.disconnect()

  setParam: (nofloPort, seriouslyPort, data) -> # this is bound, so use -> not =>
    @seriouslyNode[seriouslyPort] = data

  shutdown: ->
    for key, val of @sources
      @unsyncGraph key