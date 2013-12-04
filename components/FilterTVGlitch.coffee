noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.tvglitch.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterTVGlitch extends SeriouslyEffect
  constructor: ->
    super "tvglitch", 1

exports.getComponent = -> new FilterTVGlitch
