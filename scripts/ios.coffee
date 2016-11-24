# Description:
#   Corrige quem escrever "iOS" errado
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

  robot.hear /\b(IOS|((i|I)(os|Os|oS)))\b/, (res) ->
    res.send "Você acabou de matar #{res.random weapons} um(a) #{res.random animals} ao escrever \"iOS\" errado."
