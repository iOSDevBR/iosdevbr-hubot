# Description
#   Accepts a heroku hook and posts to channel
#
# Dependencies:
#   none
#
# Configuration:
#
# Commands:
#   Posta uma mensagem ao fazer um novo deploy do website do CH
#
# Notes:
#   
#
# Author:
#   ghvillasboas (based on Artsy Editorial work)

url = require('url')
querystring = require('querystring')

module.exports = (robot) ->

  robot.router.post "/post/heroku/website", (req, res) ->

    query = querystring.parse(req.query)
    heroku_app = req.body.app
    heroku_user = req.body.user
    heroku_url = req.body.url
    heroku_head = req.body.head
    heroku_head_long = req.body.head_long
    heroku_git_log = req.body.git_log

    user = {}
    user.room = "#cocoaheadsbr"

    emocao_hubot = [
      "YAY!",
      "YES!",
      "OBA!",
      "EBA!",
      "WOW!"
    ]

    try
       robot.send user, "#{random emocao_hubot} Novo deploy no website do CocoaHeadsBR: #{heroku_git_log}"

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