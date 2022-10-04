jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')

  ScrollBottom(250)
  if messages.length > 0
    createRoomChannel messages.data('room-id')

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
  $("#messages").animate({ scrollTop: $("#messages").get(0).scrollHeight }, speed);
