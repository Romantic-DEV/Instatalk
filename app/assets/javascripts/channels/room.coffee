channel = null

jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')

  if messages.length > 0
    channel = createRoomChannel messages.data('room-id')
    ScrollBottom(250)
  else
    channel?.unsubscribe()
    return

  $(document).on 'keypress', '#message_body', (event) ->
    message = event.target.value

    if event.keyCode is 13
      App.room.speak(message)
      event.target.value = ""
      event.preventDefault()

createRoomChannel = (roomId) ->
  App.room = App.cable.subscriptions.create {channel: "RoomChannel", roomId: roomId},
    connected: ->
      console.log('Connected to RoomChannel')

    disconnected: ->
      console.log('Disconnected from RoomChannel')

    received: (data) ->
      $('#messages').append data['message']
      ScrollBottom(0)

    speak: (message) ->
      if message != ""
        @perform 'speak', message: message

ScrollBottom = (speed) ->
  $("#messages").animate({scrollTop: $("#messages").get(0).scrollHeight}, speed);
