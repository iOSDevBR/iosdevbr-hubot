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
    msg.send "Opa! @#{msg} Você falou a palavra secreta: #{msg.match[1]} https://pt.wikipedia.org/wiki/Ornitorrinco"
