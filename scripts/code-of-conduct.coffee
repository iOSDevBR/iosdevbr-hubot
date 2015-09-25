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
  homophobic = ["gay", "viado", "bicha"]
  chauvinist = ["coisa de menina", "afeminado", "igual mulher"]
  expressions = homophobic.concat chauvinist

  regex = RegExp('(' + expressions.join('|') + ')', 'i')
  robot.hear regex, (msg) ->
    msg.send "Ei <@#{msg.envelope.user.id}>. *#{msg.match[1]}* não é legal de se falar por aqui. " +
             "Depois dá uma conferida no Código de Conduta do grupo :wink:"
    msg.send "https://github.com/iOSDevBR/Codigo-De-Conduta"
