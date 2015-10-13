
# Description:
#   Sugere que faça melhorias ao hubot caso seja chamado de "burrinho"
#

module.exports = (robot) ->
    dumbwords = ["burro","burrinho","idiota","otário"]
    regex = RegExp(dumbwords.join('.*hubot|').concat '.*hubot|hubot.*'.concat dumbwords.join('|hubot.*'), 'i')

    robot.hear regex, (msg) ->
        msg.send "Ei <@#{msg.envelope.user.id}>! Talvez eu até seja, mas estou sempre disposto a melhorar. Bem que você poderia dar uma mão com isso né? :wink:"
        msg.send "https://github.com/iOSDevBR/iosdevbr-hubot"