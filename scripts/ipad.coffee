# Description:
#   Corrige quem escrever "iPad" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /.*\b(I(p|P)(a|A)(d|D)|ip(aD|Ad|AD)|iP(aD|Ad|AD)|ipad)\b.*/, (res) ->
  	
  	functions.mistyping(res, "iPad")