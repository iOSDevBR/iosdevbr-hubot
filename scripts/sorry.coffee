# Description
#   Peça desculpas ao hubot que ele educadamente te responde de volta
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   hubot sorry, desculpa, desculpas, foi mal, mal ae, my bad, etc.
#
# Notes:
#
#
# Author:
#   ghvillasboas

greetings = [
  "Tá tranquilo :wink:",
  "Relaxa :smile:",
  "Tá de boa na lagoa :swimmer:",
  "Tá sussa :v:",
  "Hi five! :hand:",
  "Soquinho! :punch:",
  "Tudo bem! Mas estamos de olho, hein? :eyes:",
  "Vou pensar no seu caso... :thought_balloon:",
  "Paz! :v:",
  "Paz! :vulcan:",
  "Ok! Poderia ser pior... :android:",
  "Visualizado há 14 horas. :white_check_mark:",
  "De boa... mas já sabe né? Na próxima: :ledger:",
  "Quantidade de vezes que o Hubot perdoa: :zero:",
  ":see_no_evil:",
  "Tranquilo :john:",
  "Tudo certo! :doug:",
  "Relaxa! Não vai ser hoje que vamos ter um #fightOfTheWeek :selodougapproves:",
  "Está bien! :taco:",
  "Это нормально! :guardsman:",
  "やりました！(Traduzido pelo Bing: Tudo bem!) :expressionless:",
  "Tranquilo! Estamos apenas trabalhando para tornar nossa convivência melhor! :construction_worker:",
  "De boas! :beers:",
  "Ta tranquilo! Viram isso minha gente? Uma pessoa que escuta e aprende! :clap:",
  "Minha :crystal_ball: tá dizendo que não vai se repetir, então tudo bem! Relaxa!",
  "Ta desculpado! Vai tranquilo! :balloon:",
  "OK! :doge:"
]

module.exports = (robot) ->
  robot.respond /.*(sorry|desculpa|desculpas|perdão|perdao|foi mal|foi mal ae|mal ae|mal ai|foi mal ai|my bad).*/i, (msg) ->
    msg.send "<@#{msg.envelope.user.id}>: #{msg.random greetings}"
