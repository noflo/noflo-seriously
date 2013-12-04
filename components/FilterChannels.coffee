noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.channels.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterChannels extends SeriouslyEffect
  constructor: ->
    super "channels", 1

exports.getComponent = -> new FilterChannels
