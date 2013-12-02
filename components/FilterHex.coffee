noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.hex.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterHex extends SeriouslyEffect
  constructor: ->
    super "hex", 1

exports.getComponent = -> new FilterHex
