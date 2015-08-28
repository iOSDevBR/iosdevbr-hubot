# Description
#   pong
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   hubot pong
#
# Notes:
#
#
# Author:
#   gustavo.barbosa

module.exports = (robot) ->
  robot.respond /PONG$/i, (msg) ->
    msg.send "PING"
