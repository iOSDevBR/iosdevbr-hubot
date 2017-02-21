# Description
#   Script that sends a monads definition
# Commands:
#   monads
# Author:
#   diegoventura

module.exports = (robot) ->
  robot.hear /(como faço|como eu faço) (.*)/i, (res) ->
    res.reply "Ei <@#{res.envelope.user.id}>, você já tentou pesquisar #{res.match[2]}+ios no Google? Vou te dar um dica: https://www.google.com/#q=#{res.match[2]}+%2B+ios"
