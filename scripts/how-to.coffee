# Description
#   Script that suggests a google search when user asks how to do something
# Commands:
#   como eu faço <blah>
# Author:
#   diegoventura

module.exports = (robot) ->
  robot.hear /(como faço|como eu faço) (.*)/i, (res) ->
    searchTerm = res.match[2].replace(/\ /g, '%20')
    res.reply "você já tentou pesquisar por #{res.match[2]}+ios no Google? Vou te dar um dica: https://www.google.com/#q=#{searchTerm}+%2B+ios"
