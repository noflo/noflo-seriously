noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'

class SetFilterSource extends noflo.Component

  constructor: () ->
    if (!window.nofloSeriously)
      window.nofloSeriously = new Seriously()
    @seriously = window.nofloSeriously

    @inPorts = 
      source: new noflo.Port 'object' # dom image, video, webgl texture

    @outPorts =
      out: new noflo.ArrayPort 'object' # seriously

    @inPorts.source.on('data', @setSource);
    # @inPorts.source.on('disconnect', @unsyncSource);

  setSource: (data) =>
    # @seriouslyNode.source = data
    if @outPorts.out.isAttached()
      @outPorts.out.send @seriously.source data

  # unsyncSource: (event) =>
  #   # TODO noflo bug?
  #   # console.log event
  #   @seriouslyNode.source = null
  #   if @seriouslyStarted 
  #     @seriously.stop()
  #     @seriouslyStarted = false


exports.getComponent = -> new SetFilterSource