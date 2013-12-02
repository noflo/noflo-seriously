noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.sepia.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterSepia extends SeriouslyEffect
  constructor: ->
    super "sepia", 1

exports.getComponent = -> new FilterSepia
