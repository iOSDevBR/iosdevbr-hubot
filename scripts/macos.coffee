# Description:
#   Corrige quem escrever "macOS" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /[a-zA-Z0-9\/\.:\-\_]*((M(a|A)(c|C)(o|O)(s|S))|(m(A)(c|C)(o|O)(s|S))|(ma(C)(o|O)(s|S))|mac(os|Os|oS))[a-zA-Z0-9\/\.:\-\_#]*/, (res) ->
  	
  	functions.mistyping(res, "macOS")