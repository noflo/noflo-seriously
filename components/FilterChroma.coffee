noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.chroma.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterChroma extends SeriouslyEffect
  constructor: ->
    super "chroma", 1

exports.getComponent = -> new FilterChroma
