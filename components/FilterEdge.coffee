noflo = require 'noflo'
Seriously = require 'seriously'
seriouslyEdge = require 'seriously/effects/seriously.edge.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterEdge extends SeriouslyEffect
  constructor: ->
    super "edge", 1
    console.log "FilterEdge constructor", seriouslyEdge

exports.getComponent = -> new FilterEdge