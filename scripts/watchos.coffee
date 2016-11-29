# Description:
#   Corrige quem escrever "watchOS" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /.*\b((W(a|A)(t|T)(c|C)(h|H)(o|O)(s|S))|(wA(t|T)(c|C)(h|H)(o|O)(s|S))|(wa(T)(c|C)(h|H)(o|O)(s|S))|(wat(C)(h|H)(o|O)(s|S))|(watc(H)(o|O)(s|S))|watch(os|Os|oS))\b.*/, (res) ->
  	
  	functions.mistyping(res, "watchOS")