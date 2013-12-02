noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.sketch.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterSketch extends SeriouslyEffect
  constructor: ->
    super "sketch", 1

exports.getComponent = -> new FilterSketch
