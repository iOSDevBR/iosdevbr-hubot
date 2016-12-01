# Description:
#   Corrige quem escrever "iOS" errado
#

functions = require "./functions"

module.exports = (robot) ->

  robot.hear /[a-zA-Z0-9\/\.:\-\_]*(IOS|((i|I)(os|Os|oS)))[a-zA-Z0-9\/\.:\-\_#]*/, (res) ->

  	functions.mistyping(res, "iOS")