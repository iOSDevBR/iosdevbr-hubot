# Description
#   Script that sends a link medium about hamburger menu
# Commands:
#   hamburger menu, menu hamburger, :hamburger: menu, menu :hamburger:
#
# Notes:
#   It just listens to the feed and interact with the medium link
#
# Author:
#   ltsuda

module.exports = (robot) ->
  robot.hear /hamburger menu|menu hamburger|:hamburger: menu|menu :hamburger:/i, (msg) ->
    msg.send "https://medium.com/@kollinz/hamburger-menu-alternatives-for-mobile-navigation-a3a3beb555b8#.h6v94pyyy"