# Description
#   Posta no canal toda vez que um registro é criado no website do CocoaHeadsBR (fotos, agenda, cidades e videos)
#
# Dependencies:
#   none
#
# Configuration:
#
# Commands:
#   Interacao automatica via backend do website
#
# Notes:
#   
#
# Author:
#   ghvillasboas

url = require('url')
querystring = require('querystring')

module.exports = (robot) ->

  robot.router.post "/post/chbr/website", (req, res) ->

    query = querystring.parse(req.query)
    web_channel = if req.body.channel? then req.body.channel else "#hubottest"
    web_message = req.body.message
    web_mood = if req.body.mood? then req.body.mood else 'good'

    user = {}
    user.room = web_channel

    good_mood_hubot = [
      "YAY!",
      "YES!",
      "OBA!",
      "EBA!",
      "WOW!",
      "Uhhuuuu!",
      'Rádio Hubot innnnforma!'
    ]

    bad_mood_hubot = [
      "PUTZ!",
      "NOOOOOO!",
      "Ahhhh!",
      "NÃO!",
      "OH NÃO!",
      "Nananinanã!",
      "Babado!"
    ]

    mood = if web_mood == 'bad' then bad_mood_hubot else good_mood_hubot

    try
        if web_mood != 'none'
          robot.send user, "#{random mood} #{web_message}"
        else
          robot.send user, "#{web_message}"
        res.end "message sent to channel"

    catch error
      console.log "message-listner error: #{error}."

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