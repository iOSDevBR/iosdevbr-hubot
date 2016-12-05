# Description:
#   Corrige quem escrever "iPhone" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /[a-zA-Z0-9\/\.:\-\_]*(I(p|P)(h|H)(o|O)(n|N)(e|E)|iPH(o|O)(n|N)(e|E)|ipH(o|O)(n|N)(e|E)|iPhO(n|N)(e|E)|iPho(Ne|nE|NE))[a-zA-Z0-9\/\.:\-\_#]*/, (res) ->
  	
  	functions.mistyping(res, "iPhone")