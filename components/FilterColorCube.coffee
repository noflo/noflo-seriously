noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.colorcube.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterColorCube extends SeriouslyEffect
  constructor: ->
    super "colorcube", 1

exports.getComponent = -> new FilterColorCube
