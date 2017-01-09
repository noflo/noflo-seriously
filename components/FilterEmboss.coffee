noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.emboss.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterEmboss extends SeriouslyEffect
  constructor: ->
    super "emboss", 1

exports.getComponent = -> new FilterEmboss
