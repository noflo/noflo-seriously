noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
seriouslyEdge = require '../vendor/effects/seriously.blend.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterBlend extends SeriouslyEffect
  constructor: ->
    super "blend", 2

exports.getComponent = -> new FilterBlend
