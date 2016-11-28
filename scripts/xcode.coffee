# Description:
#   Corrige quem escrever "Xcode" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /.*\b((x((c|C)(o|O)(d|D)(e|E)))|(XC((o|O)(d|D)(e|E)))|(Xc((O)(d|D)(e|E)))|(Xco((D)(e|E)))|XcodE)\b.*/, (res) ->
  	
  	functions.mistyping(res, "Xcode")
