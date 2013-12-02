noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.lumakey.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterLumakey extends SeriouslyEffect
  constructor: ->
    super "lumakey", 1

exports.getComponent = -> new FilterLumakey
