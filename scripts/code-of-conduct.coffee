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
  homophobic = ["gay", "viado", "bicha", "boiola", "viadinho", "bichona", "chupar", "lésbica", "homossexual", "machona", "baitola"]
  chauvinist = ["coisa de menina", "afeminado", "igual mulher", "igual garota", "igual menina", "mocinha", "lugar de mulher", "vadia", "vagabunda"]
  racist = ["coisa de preto", "igual preto", "lugar de preto"]

  expressions = homophobic.concat(chauvinist, racist)
  expressions = ('\\b' + word + '\\b' for word in expressions)

  regex = RegExp('(' + expressions.join('|') + ')', 'i')
  robot.hear regex, (msg) ->
    msg.send "Ei <@#{msg.envelope.user.id}>. *#{msg.match[1]}* não é legal de se falar por aqui. " +
             "Depois dá uma conferida no Código de Conduta do grupo :wink:"
    msg.send "https://github.com/iOSDevBR/Codigo-De-Conduta"
