# Description:
#   Corrige quem escrever "iOS" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /.*\b(IOS|((i|I)(os|Os|oS)))\b.*/, (res) ->
  	
  	functions.mistyping(res, "iOS")