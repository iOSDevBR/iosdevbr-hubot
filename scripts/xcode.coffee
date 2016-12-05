# Description:
#   Corrige quem escrever "Xcode" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /[a-zA-Z0-9\/\.:\-\_]*((xC((o|O)(d|D)(e|E)))|(XC((o|O)(d|D)(e|E)))|((x|X)cO((d|D)(e|E)))|(Xco((D)(e|E)))|XcodE)[a-zA-Z0-9\/\.:\-\_#]*/, (res) ->
  	
  	functions.mistyping(res, "Xcode")
