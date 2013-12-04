noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
seriouslyEdge = require '../vendor/effects/seriously.vignette.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterVignette extends SeriouslyEffect
  constructor: ->
    super "vignette", 1

exports.getComponent = -> new FilterVignette
