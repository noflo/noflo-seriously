noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.tone.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterTone extends SeriouslyEffect
  constructor: ->
    super "tone", 1

exports.getComponent = -> new FilterTone
