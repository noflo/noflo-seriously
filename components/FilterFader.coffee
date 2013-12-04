noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
seriouslyEdge = require '../vendor/effects/seriously.fader.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterFader extends SeriouslyEffect
  constructor: ->
    super "fader", 1

exports.getComponent = -> new FilterFader
