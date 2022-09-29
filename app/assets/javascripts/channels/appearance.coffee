App.appereance = App.cable.subscriptions.create "AppearanceChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log('Connected to AppearanceChannel')

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log('Disconnected from AppearanceChannel')

  received: (data) ->
    if (data["action"] == "appear")
      $("#users").append(data["nickname"])
    else
      $("#user-#{data["user_id"]}").remove()


