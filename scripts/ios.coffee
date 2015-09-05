# Description:
#   Corrige quem escrever "IOS"
#

module.exports = (robot) ->

  robot.hear /\bIOS\b/, (res) ->
    res.send "Você acabou de matar um panda ao escrever \"iOS\" errado."
