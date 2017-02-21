# Description
#   Script that suggests a google search when user asks how to do something
# Commands:
#   como eu faço <blah>
# Author:
#   diegoventura

module.exports = (robot) ->
  robot.hear /(como faço|como eu faço) (.*)/i, (res) ->
    res.reply "Ei <@#{res.envelope.user.id}>, você já tentou pesquisar #{res.match[2]}+ios no Google? Vou te dar um dica: https://www.google.com/#q=#{res.match[2]}+%2B+ios"
