# Description
#   Get Page stats from google analytics
#
# Dependencies:
#   "date-utils": ">=1.2.5"
#   "googleanalytics": "0.3.6"
#
# Configuration:
#   HUBOT_ANALYTICS_USER
#   HUBOT_ANALYTICS_PASSWD
#   HUBOT_ANALYTICS_PROFILE_ID
#
# Commands:
#   hubot quantas visitas tivemos mês|ontem|semana|ano passado?
#
# Notes:
#   
#
# Author:
#   ghvillasboas (based on Artsy Editorial work)

GA = require('googleanalytics')
util = require('util')
require('date-utils');        
   
module.exports = (robot) ->
  robot.respond /(quantas|quantos) (visitas|acessos|sessões|sessoes|secoes|seções|seções|secoes) tivemos (mês|mes|ontem|semana|ano|na vida).*/i, (msg) ->
    scope = msg.match[3]

    config = { "user": process.env.HUBOT_ANALYTICS_USER, "password": process.env.HUBOT_ANALYTICS_PASSWD }
    
    ga = new GA.GA(config);

    ga.login (err, token) ->
      
      start_date = Date.today().add({ months: -1 }).toYMD("-")

      # format scope of starting dates
      if scope == "ontem"
        start_date = Date.yesterday().toYMD("-")
      else if scope == "semana"
        start_date = Date.today().add({ weeks: -1 }).toYMD("-")
      else if scope == "ano"
        start_date = Date.today().add({ years: -1 }).toYMD("-")
      else if scope == "na vida"
        start_date = Date.today().add({ years: -2 }).toYMD("-")

      end_date = Date.today().toYMD("-")
      
      options = {
          'ids': "ga:#{process.env.HUBOT_ANALYTICS_PROFILE_ID}",
          'start-date': start_date,
          'end-date': end_date,
          'metrics': 'ga:sessions, ga:pageviews, ga:avgSessionDuration, ga:percentNewSessions'
      }

      ga.get(options, (err, entries) ->

        message = ""

        visits = entries[0]["metrics"][0]["ga:sessions"]
        pageviews = entries[0]["metrics"][0]["ga:pageviews"]
        percentNew = parseInt( entries[0]["metrics"][0]["ga:percentNewSessions"], 10 )
        onlineTime = parseInt( entries[0]["metrics"][0]["ga:avgSessionDuration"] )

        # format message
        if scope == "ontem"
          message += "Ontem tivemos "
        else if scope == "semana"
          message += "Na última semana tivemos "
        else if scope == "ano"
          message += "No último ano tivemos "
        else if scope == "na vida"
          message += "Em toda nossa vida tivemos "
        else 
          message += "No último mês tivemos "

        message += "#{visits} sessões (#{percentNew}% novas) e #{pageviews} pageviews. Tempo médio online: #{convertoToHHMMSS onlineTime}"
        
        msg.reply message 
      )

convertoToHHMMSS = (seconds) ->
  # multiply by 1000 because Date() requires miliseconds
  date = new Date(seconds * 1000)
  hh = date.getUTCHours()
  mm = date.getUTCMinutes()
  ss = date.getSeconds()

  # This line gives you 12-hour (not 24) time
  if hh > 12
    hh = hh - 12
  
  # These lines ensure you have two-digits
  if hh < 10
    hh = "0" + hh
  if mm < 10
    mm = "0"+mm
  if ss < 10
    ss = "0"+ss

  # This formats your string to HH:MM:SS
  "#{hh}:#{mm}:#{ss}"