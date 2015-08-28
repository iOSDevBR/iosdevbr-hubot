# Description
#   Script para Código de Conduta
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   none
#
# Notes:
#   none
#
# Author:
#   Gustavo Barbosa

module.exports = (robot) ->
  robot.hear /(ornitorrinco|avestruz)/i, (msg) ->
    msg.reply "Opa! Você falou a palavra secreta: #{msg.match[1]}"
    msg.reply "https://pt.wikipedia.org/wiki/Ornitorrinco"
