noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.color.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterColor extends SeriouslyEffect
  constructor: ->
    super "color", 1

exports.getComponent = -> new FilterColor
