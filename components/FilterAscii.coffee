noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
seriouslyEdge = require '../vendor/effects/seriously.ascii.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterAscii extends SeriouslyEffect
  constructor: ->
    super "ascii", 1

exports.getComponent = -> new FilterAscii
