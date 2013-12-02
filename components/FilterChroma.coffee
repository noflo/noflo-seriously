noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.chroma.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterChroma extends SeriouslyEffect
  constructor: ->
    super "chroma", 1

exports.getComponent = -> new FilterChroma
