noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.bleach-bypass.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterBleachBypass extends SeriouslyEffect
  constructor: ->
    super "bleach-bypass", 1

exports.getComponent = -> new FilterBleachBypass
