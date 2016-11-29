# Description:
#   Corrige quem escrever "macOS" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /.*\b((M(a|A)(c|C)(o|O)(s|S))|(m(A)(c|C)(o|O)(s|S))|(ma(C)(o|O)(s|S))|mac(os|Os|oS))\b.*/, (res) ->
  	
  	functions.mistyping(res, "macOS")