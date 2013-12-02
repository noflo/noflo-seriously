noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.tvglitch.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterTVGlitch extends SeriouslyEffect
  constructor: ->
    super "tvglitch", 1

exports.getComponent = -> new FilterTVGlitch
