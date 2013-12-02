noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.blend.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterBlend extends SeriouslyEffect
  constructor: ->
    super "blend", 2

exports.getComponent = -> new FilterBlend
