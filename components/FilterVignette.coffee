noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.vignette.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterVignette extends SeriouslyEffect
  constructor: ->
    super "vignette", 1

exports.getComponent = -> new FilterVignette
