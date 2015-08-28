# Description
#   You say pong. Hubot says PING.
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
#   Gustavo Barbosa

module.exports = (robot) ->
  robot.respond /PONG$/i, (msg) ->
    msg.send "PING"
