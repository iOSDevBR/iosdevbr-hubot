# Description:
#   Corrige quem escrever "Xcode" errado
#

weapons = [
  ":gun:",
  ":knife:",
  ":bomb:",
  ":dagger_knife:"
]

animals = [
  "panda :panda_face:",
  "koala :koala:",
  "unicórnio :unicorn_face:",
  "golfinho :dolphin:",
  "pomba branca :dove_of_peace:"
]

module.exports = (robot) ->

  robot.hear /\bxcode\b|\bxCode\b|\bXCODE\b|\bXCode\b/, (res) ->
    res.send "Você acabou de matar #{res.random weapons} um(a) #{res.random animals} ao escrever \"Xcode\" errado."
