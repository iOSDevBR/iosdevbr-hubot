# Description:
#   Arquivo que contém funções comuns
#

url = require('url')
request = require('request')
arrays = require "./arrays"

exports.mistyping = (res, correct, length) -> 

	if (!url.parse(res.match[0]).hostname && res.match[0].length == correct.length)

		animal = res.random arrays.animals
		dead = if animal.gender == 'feminine' then 'mortas' else 'mortos'
		request.post  "http://panda-counter.herokuapp.com/#{animal.emoji}", (error, response, body) ->
			count = JSON.parse(body)[animal.emoji]
			res.send "Você acabou de matar #{res.random arrays.weapons} #{animal.description} #{animal.emoji} ao escrever #{correct} errado. Total de #{animal.emoji} #{dead}: #{count}"