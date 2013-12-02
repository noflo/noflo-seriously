noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.split.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterSplit extends SeriouslyEffect
  constructor: ->
    super "split", 1

exports.getComponent = -> new FilterSplit
