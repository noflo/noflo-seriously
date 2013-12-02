noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.emboss.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterEmboss extends SeriouslyEffect
  constructor: ->
    super "emboss", 1

exports.getComponent = -> new FilterEmboss
