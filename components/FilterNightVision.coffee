noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.nightvision.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterNightVision extends SeriouslyEffect
  constructor: ->
    super "nightvision", 1

exports.getComponent = -> new FilterNightVision
