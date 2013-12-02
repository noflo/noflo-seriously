noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.vignette.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterVignette extends SeriouslyEffect
  constructor: ->
    super "vignette", 1

exports.getComponent = -> new FilterVignette
