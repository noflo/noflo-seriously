noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.ascii.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterAscii extends SeriouslyEffect
  constructor: ->
    super "ascii", 1

exports.getComponent = -> new FilterAscii
