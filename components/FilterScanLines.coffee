noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.scanlines.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterScanLines extends SeriouslyEffect
  constructor: ->
    super "scanlines", 1

exports.getComponent = -> new FilterScanLines
