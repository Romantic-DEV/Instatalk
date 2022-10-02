App.appereance = App.cable.subscriptions.create "AppearanceChannel",
  connected: ->
# Called when the subscription is ready for use on the server
    console.log('Connected to AppearanceChannel')

  disconnected: ->
# Called when the subscription has been terminated by the server
    console.log('Disconnected from AppearanceChannel')

  received: (data) ->
    console.log(data["users"])
    users = data['users'].map (i) -> "<p>#{i}</p>"
    $('#users').html(users.join(""))
    #data["users"].map
    #$('#users').text "<p>#{data['nickname']}</p>"


