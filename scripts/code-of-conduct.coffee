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
  robot.hear /(gay|viado|bicha|coisa de menina|afeminado|igual mulher)/i, (msg) ->
    msg.send "Ei <@#{msg.envelope.user.id}>. *#{msg.match[1]}* não é uma coisa legal de se falar por aqui. " +
             "Depois dá uma conferida no Código de Conduta do grupo :wink:"
    msg.send "https://github.com/iOSDevBR/Codigo-De-Conduta"
