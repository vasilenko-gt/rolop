window.Application          ||= {}
window.Application.Classes  ||= {}

class Application.Core
  start: ->
    $(document).on 'page:change', @afterRenderPage()

  afterRenderPage: ($scope = $('body')) ->