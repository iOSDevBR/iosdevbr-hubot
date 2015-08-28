# Description
#   Posts on channel everytime a YO is received
#
# Dependencies:
#   none
#
# Configuration:
#
# Commands:
#   Interação via yo. Mande um yo para HUBOTCOCOAHEADS ou pergunta: hubot qual é seu yo?
#
# Notes:
#   
#
# Author:
#   ghvillasboas

url = require 'url'
http = require 'http'
querystring = require 'querystring'
request = require('request');

module.exports = (robot) ->

  robot.router.get "/get/yo", (req, res) ->
    token = process.env.HUBOT_YO_API_TOKEN

    query = querystring.parse(url.parse(req.url).query)

    user = {}
    user.room = "#random"

    username = query.username if query.username

    emocao_hubot = [
      "Que legal! :blush:",
      "Que meigo! :kiss:",
      "Oba! :grin:",
      "Olha só! :stuck_out_tongue_winking_eye:",
      "Abracadabra! :collision:",
      "Que milagre! :confounded:",
      "Que chato :triumph:!",
      "Afffff. :rage:",
      "Hããã?. :dizzy_face:",
      "Yo Mr. White! It's Science bitch. :dollar::dollar::dollar:",
    ]

    propaganda = if ~~(Math.random() * (100 + 1)) % 2 == 0 then "A propósito, meu YO é HUBOTCOCOAHEADS, bitch! :smirk:" else ""

    try
      robot.send user, "#{random emocao_hubot} Acabei de receber um YO de #{username}! #{propaganda}"

      delay 10000, -> 
        request.post "http://api.justyo.co/yo/",
          form:
            "username": username
            "api_token": token
          (error, response, body) ->
            console.log body if not error and response.statusCode is 200

      res.end "message sent to channel"

    catch error
      console.log "message-listner error: #{error}."

  robot.respond /.*(yo|y0).*/i, (msg) ->
    respostas = [
      "Meu yo é HUBOTCOCOAHEADS, mas não abuse.",
      "HUBOTCOCOAHEADS",
      "Da parte de quem?",
      "Pq o interesse?",
      "hum... hum... esqueci.",
      "É HUBOTCOCOAHEADS. O primeiro hubot a ter yo. :wink:",
      "O que é yo?",
      "É HUBOTCOCOAHEADS. Manda um que eu te respondo!"
    ]
    msg.reply "#{msg.random respostas}"


shuffle = (a) ->
  i = a.length
  while --i > 0
    j = ~~(Math.random() * (i + 1)) # ~~ is a common optimization for Math.floor
    t = a[j]
    a[j] = a[i]
    a[i] = t
  a

random = (a) ->
  a = shuffle(a)
  a[0]

delay = (ms, func) -> setTimeout func, ms