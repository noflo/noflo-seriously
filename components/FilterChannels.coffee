noflo = require 'noflo'
Seriously = require '/forresto-seriously'
seriouslyEdge = require '/forresto-seriously/effects/seriously.channels.js'

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterChannels extends SeriouslyEffect
  constructor: ->
    super "channels", 1

exports.getComponent = -> new FilterChannels
