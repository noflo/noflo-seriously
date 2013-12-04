noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
seriouslyEdge = require '../vendor/effects/seriously.hex.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterHex extends SeriouslyEffect
  constructor: ->
    super "hex", 1

exports.getComponent = -> new FilterHex
