# Description
#   Peça desculpas ao hubot que ele educadamente te responde de volta
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   hubot sorry, desculpa, desculpas, foi mal, mal ae, my bad, etc.
#
# Notes:
#
#
# Author:
#   ghvillasboas

greetings = [
  "Tá tranquilo :wink:",
  "Relaxa :smile:",
  "Tá de boa na lagoa :smimmer:",
  "Tá sussa :v:",
  "Hi five! :hand:",
  "Soquinho! :punch:",
  ":heart:"
]

module.exports = (robot) ->
  robot.respond /.*(sorry|desculpa|desculpas|perdão|perdao|foi mal|foi mal ae|mal ae|mal ai|foi mal ai|my bad).*/i, (msg) ->
    msg.reply "#{msg.random greetings}"
