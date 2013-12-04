noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.noise.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterNoise extends SeriouslyEffect
  constructor: ->
    super "noise", 1

exports.getComponent = -> new FilterNoise
