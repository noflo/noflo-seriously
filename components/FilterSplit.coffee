noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.split.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterSplit extends SeriouslyEffect
  constructor: ->
    super "split", 1

exports.getComponent = -> new FilterSplit
