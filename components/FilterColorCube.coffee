noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.colorcube.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterColorCube extends SeriouslyEffect
  constructor: ->
    super "colorcube", 1

exports.getComponent = -> new FilterColorCube
