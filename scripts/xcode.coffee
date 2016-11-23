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

  robot.hear /\b((x((c|C)(o|O)(d|D)(e|E)))|(XC((o|O)(d|D)(e|E)))|(Xc((O)(d|D)(e|E)))|(Xco((D)(e|E)))|XcodE)\b/, (res) ->
    res.send "Você acabou de matar #{res.random weapons} um(a) #{res.random animals} ao escrever \"Xcode\" errado."
