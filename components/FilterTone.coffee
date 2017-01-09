noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.tone.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterTone extends SeriouslyEffect
  constructor: ->
    super "tone", 1

exports.getComponent = -> new FilterTone
