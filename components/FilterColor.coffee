noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
seriouslyEdge = require '../vendor/effects/seriously.color.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterColor extends SeriouslyEffect
  constructor: ->
    super "color", 1

exports.getComponent = -> new FilterColor
