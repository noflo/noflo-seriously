noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.scanlines.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterScanlines extends SeriouslyEffect
  constructor: ->
    super "scanlines", 1

exports.getComponent = -> new FilterScanlines
