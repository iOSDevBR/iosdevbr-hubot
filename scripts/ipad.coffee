# Description:
#   Corrige quem escrever "iPad" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /[a-zA-Z0-9\/\.:\-\_]*(I(p|P)(a|A)(d|D)|ip(aD|Ad|AD)|iP(aD|Ad|AD))[a-zA-Z0-9\/\.:\-\_#]*/, (res) ->
  	
  	functions.mistyping(res, "iPad")