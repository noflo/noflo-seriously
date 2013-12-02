noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.invert.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterInvert extends SeriouslyEffect
  constructor: ->
    super "invert", 1

exports.getComponent = -> new FilterInvert
