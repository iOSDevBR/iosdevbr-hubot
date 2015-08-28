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
#   Gustavo Barbosa

module.exports = (robot) ->
  robot.hear /ornitorrinco/i, (msg) ->
    msg.reply "Opa! Você falou a palavra secreta! https://pt.wikipedia.org/wiki/Ornitorrinco"
