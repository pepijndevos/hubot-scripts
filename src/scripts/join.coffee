# Description:
#   Join an irc channel
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot join <channel> - Join <channel>
#
# Author:
#   pepijndevos

module.exports = (robot) ->
  robot.respond /join +([&#\+!][^ ,:]*)/i, (msg) ->
    channel = escape(msg.match[1])
    robot.adapter.join channel
