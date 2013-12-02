noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.scanlines.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterScanlines extends SeriouslyEffect
  constructor: ->
    super "scanlines", 1

exports.getComponent = -> new FilterScanlines
