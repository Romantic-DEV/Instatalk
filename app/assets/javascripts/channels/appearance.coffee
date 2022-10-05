App.appereance = App.cable.subscriptions.create "AppearanceChannel",
  connected: ->
    console.log('Connected to AppearanceChannel')

  disconnected: ->
    console.log('Disconnected from AppearanceChannel')

  received: (data) ->
    users = data['users'].map (i) -> "<p>#{i}</p>"
    $('#users').html(users.join(""))
