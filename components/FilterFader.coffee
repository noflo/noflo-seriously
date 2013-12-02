noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.fader.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterFader extends SeriouslyEffect
  constructor: ->
    super "fader", 1

exports.getComponent = -> new FilterFader
