noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.noise.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterNoise extends SeriouslyEffect
  constructor: ->
    super "noise", 1

exports.getComponent = -> new FilterNoise
