noflo = require 'noflo'
Seriously = require '../vendor/seriously.js'
Effect = require '../vendor/effects/seriously.lumakey.js'

# @runtime noflo-browser

{SeriouslyEffect} = require '../lib/SeriouslyEffect'

class FilterLumakey extends SeriouslyEffect
  constructor: ->
    super "lumakey", 1

exports.getComponent = -> new FilterLumakey
