noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.hex.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterHex extends SeriouslyEffect
  constructor: ->
    super "hex", 1

exports.getComponent = -> new FilterHex
