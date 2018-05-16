#= require      ./plugins/index
#= require      ./core/core

$ ->
  Application.app = new Application.Core
  Application.app.start()