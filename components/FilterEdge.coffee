noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.edge.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterEdge extends SeriouslyEffect
  constructor: ->
    super "edge", 1
    console.log "FilterEdge constructor", seriouslyEdge

exports.getComponent = -> new FilterEdge