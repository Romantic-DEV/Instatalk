App.appereance = App.cable.subscriptions.create "AppereanceChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log('Connected to AppereanceChannel')

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log('Disconnected from AppereanceChannel')

  received: (data) ->
