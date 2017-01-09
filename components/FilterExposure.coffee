noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.exposure.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterExposure extends SeriouslyEffect
  constructor: ->
    super "exposure", 1

exports.getComponent = -> new FilterExposure
