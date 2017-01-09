noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.sepia.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterSepia extends SeriouslyEffect
  constructor: ->
    super "sepia", 1

exports.getComponent = -> new FilterSepia
