App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#messages').append(data.message)
    $('#messages')[0].scrollTop = $('#messages')[0].scrollHeight

  speak: (msg) ->
    @perform 'speak', message: msg
    $('#messages')[0].scrollTop = $('#messages')[0].scrollHeight

$ ->
  $('#messages')[0].scrollTop = $('#messages')[0].scrollHeight

$(document).on 'keypress', '#chat-speak', (event) ->
  if event.keyCode is 13
    App.chat.speak(event.target.value)
    event.target.value = ""
    event.preventDefault()
