# Description
#   Script to troll John Calistro
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   :john:
#
# Notes:
#   It just listens to the feed and interact with the emoji
#
# Author:
#   ghvillasboas

emojis = [
  ":rage:",
  ":heart_eyes:",
  ":heart_eyes:",
  ":thumbsdown:",
  ":thumbsup:",
  ":v:",
  ":tongue:",
  ":nail_care:",
  ":kiss:",
  ":broken_heart:",
  ":broken_heart:",
  ":heart_beat:"
]

module.exports = (robot) ->
  robot.hear /:john:/i, (msg) ->
    msg.send ":john: #{msg.random emojis}"