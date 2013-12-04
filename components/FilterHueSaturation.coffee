noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.hue-saturation.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterHueSaturation extends SeriouslyEffect
  constructor: ->
    super "hue-saturation", 1

exports.getComponent = -> new FilterHueSaturation
