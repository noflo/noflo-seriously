noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.exposure.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterExposure extends SeriouslyEffect
  constructor: ->
    super "exposure", 1

exports.getComponent = -> new FilterExposure
