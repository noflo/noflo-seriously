noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.daltonize.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterDaltonize extends SeriouslyEffect
  constructor: ->
    super "daltonize", 1

exports.getComponent = -> new FilterDaltonize
