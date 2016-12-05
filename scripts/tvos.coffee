# Description:
#   Corrige quem escrever "tvOS" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /[a-zA-Z0-9\/\.:\-\_]*((T(v|V)(o|O)(s|S))|(t(V)(o|O)(s|S))|tv(Os|oS))[a-zA-Z0-9\/\.:\-\_#]*/, (res) ->
  	
  	functions.mistyping(res, "tvOS")