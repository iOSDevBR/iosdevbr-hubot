# Description:
#   Corrige quem escrever "tvOS" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /.*\b((T(v|V)(o|O)(s|S))|(t(V)(o|O)(s|S))|tv(os|Os|oS))\b.*/, (res) ->
  	
  	functions.mistyping(res, "tvOS")