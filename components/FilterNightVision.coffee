noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.nightvision.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterNightVision extends SeriouslyEffect
  constructor: ->
    super "nightvision", 1

exports.getComponent = -> new FilterNightVision
