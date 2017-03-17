# Description
#   Script that suggests a google search when user asks how to do something
# Commands:
#   como eu faço <blah>
# Author:
#   diegoventura

module.exports = (robot) ->
  robot.hear /(como faço|como eu faço|como faco|como eu faco|alguem sabe como|alguém sabe como|how to|how to do) (.*)/i, (res) ->
    searchTerm = res.match[2].replace(/\ /g, '+').replace('?','')
    res.reply "você já tentou pesquisar por \"#{res.match[2]}\" no Google? Vou te dar um dica: https://lmgtfy.com/?q=ios+#{searchTerm}"
