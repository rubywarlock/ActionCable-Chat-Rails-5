App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log('Chat start!')

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#chatbox').append(data['message'])
    messages = $('#chatbox')
    messages.scrollTop(messages[0].scrollHeight)
