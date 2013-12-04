noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
seriouslyEdge = require '../vendor/effects/seriously.lumakey.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterLumakey extends SeriouslyEffect
  constructor: ->
    super "lumakey", 1

exports.getComponent = -> new FilterLumakey
