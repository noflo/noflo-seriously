noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.invert.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterInvert extends SeriouslyEffect
  constructor: ->
    super "invert", 1

exports.getComponent = -> new FilterInvert
