noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
seriouslyEdge = require '../vendor/effects/seriously.daltonize.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterDaltonize extends SeriouslyEffect
  constructor: ->
    super "daltonize", 1

exports.getComponent = -> new FilterDaltonize
