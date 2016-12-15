# Description
#   Script that sends a monads definition
# Commands:
#   monads
# Author:
#   diegoventura

module.exports = (robot) ->
  robot.hear /monads/, (msg) ->
    msg.send "Uma Monad em `X` é apenas uma monóide na categoria das endofunctors de `X`, com o produto :heavy_multiplication_x: substituído pela composição de endofunctors e a unidade ajustada para o endofunctor identidade :monads:"
