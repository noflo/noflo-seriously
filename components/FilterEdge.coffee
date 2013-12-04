noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
seriouslyEdge = require '../vendor/effects/seriously.edge.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterEdge extends SeriouslyEffect
  constructor: ->
    super "edge", 1

exports.getComponent = -> new FilterEdge
