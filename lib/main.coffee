provider = require './provider'

module.exports =
  activate: -> provider.loadProperties()

  provide: -> provider
