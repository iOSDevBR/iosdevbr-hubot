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
  "Por nada!",
  "De nada!",
  "Obrigado você!",
  "You're welcome!",
  "Um dia eu cobro de volta.",
  "Você me deve essa!",
  "Não abuse.",
  "Vai nessa...",
  ":grinning:",
  ":pray:",
  "Obrigado? :dollar: ?",
  "This is always at your service.",
  "Ao seu dispor!"
]

module.exports = (robot) ->
  robot.respond /.*(obrigado|obgd|valeu|thankx|thanks|:thumbsup:|thank you|tnkx|tnks).*/i, (msg) ->
    msg.reply "#{msg.random greetings}"