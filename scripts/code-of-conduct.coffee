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
  homophobic = ["gay", "viado", "bicha", "boiola", "viadinho", "bichona", "chupa", "chupar", "g0y", "lésbica", "homosexual", "machona"]
  chauvinist = ["coisa de menina", "afeminado", "igual mulher", "igual garota", "igual menina", "mocinha", "lugar de mulher", "vadia", "vagabunda"]
  expressions = homophobic.concat chauvinist

  regex = RegExp('(' + expressions.join('|') + ')', 'i')
  robot.hear regex, (msg) ->
    msg.send "Ei <@#{msg.envelope.user.id}>. *#{msg.match[1]}* não é legal de se falar por aqui. " +
             "Depois dá uma conferida no Código de Conduta do grupo :wink:"
    msg.send "https://github.com/iOSDevBR/Codigo-De-Conduta"
