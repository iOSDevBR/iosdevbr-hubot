# Description
#   Script that sends a monads definition
# Commands:
#   monads
# Author:
#   diegoventura

module.exports = (robot) ->
  robot.hear /monads/, (msg) ->
    msg.send "Monads é uma monóide na categoria das endofunctors :monads:"
