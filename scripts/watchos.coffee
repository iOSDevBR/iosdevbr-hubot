# Description:
#   Corrige quem escrever "watchOS" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /[a-zA-Z0-9\/\.:\-\_]*((W(a|A)(t|T)(c|C)(h|H)(o|O)(s|S))|(wA(t|T)(c|C)(h|H)(o|O)(s|S))|(wa(T)(c|C)(h|H)(o|O)(s|S))|(wat(C)(h|H)(o|O)(s|S))|(watc(H)(o|O)(s|S))|watch(os|Os|oS))[a-zA-Z0-9\/\.:\-\_#]*/, (res) ->
  	
  	functions.mistyping(res, "watchOS")