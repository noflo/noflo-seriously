noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.sketch.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterSketch extends SeriouslyEffect
  constructor: ->
    super "sketch", 1

exports.getComponent = -> new FilterSketch
