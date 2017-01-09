noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.daltonize.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterDaltonize extends SeriouslyEffect
  constructor: ->
    super "daltonize", 1

exports.getComponent = -> new FilterDaltonize
