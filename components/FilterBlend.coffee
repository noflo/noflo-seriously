noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.blend.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterBlend extends SeriouslyEffect
  constructor: ->
    super "blend", 2

exports.getComponent = -> new FilterBlend
