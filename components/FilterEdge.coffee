noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.edge.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterEdge extends SeriouslyEffect
  constructor: ->
    super "edge", 1

exports.getComponent = -> new FilterEdge
