# Description
#   Agradeça o hubot que ele educadamente te responde de volta
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   hubot obrigado, valeu, thanks, etc.
#
# Notes:
#
#
# Author:
#   ghvillasboas

greetings = [
  "Por nada! :+1:",
  "De nada! :+1:",
  "Obrigado você! :v:",
  "You're welcome! :+1:",
  "Um dia eu cobro de volta.",
  "Você me deve essa!",
  "Não abuse.",
  "Vai nessa...",
  ":grinning:",
  ":pray:",
  "Obrigado? :dollar: ?",
  "This is always at your service. :space_invader:",
  "Ao seu dispor! :guardsman:",
  "Ha! ha! There's no free lunch! :trollface:",
  "Ao infinito... e além!!! :android: ops... Wrong green man! :sob:",
  "Tamo ai né? :surfer:",
  "Tá achando que a ajuda foi de graça? R$ 3,50 + o dinheiro do busão! :bus:",
  "Agradeça a eles -> :chbr:",
  "Agradeça a eles -> :apbr:",
  "You're my guest!"
]

module.exports = (robot) ->
  robot.respond /.*(obrigado|obgd|valeu|thankx|thanks|:thumbsup:|thank you|tnkx|tnks).*/i, (msg) ->
    msg.send "<@#{msg.envelope.user.id}>: #{msg.random greetings}"
