# Description:
#   Corrige quem escrever "iPhone" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /.*\b(I(p|P)(h|H)(o|O)(n|N)(e|E)|iPH(o|O)(n|N)(e|E)|ip(h|H)(o|O)(n|N)(e|E)|iPhO(n|N)(e|E)|iPho(Ne|nE|NE))\b.*/, (res) ->
  	
  	functions.mistyping(res, "iPhone")