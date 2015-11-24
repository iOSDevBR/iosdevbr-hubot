# Description
#   Util scripts for the CocoaHeads BR community
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   hubot quais são as próximas agendas? - Retorna a proxima agenda do cocoaheads br
#   hubot quantos eventos já fizemos? - Retorna a quantidade de eventos realizados
#   hubot quantos inscritos? - Retorna a quantidade de inscritos nos proximos eventos
#   hubot total de inscritos? - Retorna a quantidade de inscritos em todos os eventos
#   hubot total de inscritos por mês? - Retorna a quantidade de inscritos em todos os eventos agrupados por mês
#   hubot total de inscritos por cidade? - Retorna a quantidade de inscritos em todos os eventos agrupados por cidade
#
# Notes:
#   
#
# Author:
#   ghvillasboas - jpros

module.exports = (robot) ->
  robot.respond /(proximas|próximas) agendas|(proxima|próxima) agenda|(qual|quando) (é|e|eh) a (proxima|próxima) agenda?|(quais|quando) (são|sao) as (proximas|próximas) agendas?|agendas/i, (msg) ->
    msg.http("http://www.cocoaheads.com.br/agendas.json")
    .get() (err, res, body) ->
      try
        json = JSON.parse(body)
        message = "\n"
        for agenda in json
          data = new Date(agenda.data)
          message += "Evento: #{agenda.nome}\nData: #{data.getDate()}/#{data.getMonth() + 1}/#{data.getFullYear()} às #{data.toLocaleTimeString()}\nLocal: #{agenda.local}\n\n"
        msg.reply message
      catch err
        msg.reply "Hã? Cuma? O que? Não consegui pegar as agendas! :rage:"

  robot.respond /.*(inscritos|inscrição|inscricao|inscricoes|inscrições|rsvps|rsvp|confirmados).*/i, (msg) ->
    if(msg.message.match(/.*(todos|total).*/i))
      if(msg.message.match(/.*(mês|mes|ano)/i))
        msg.http("http://www.cocoaheads.com.br/agendas/total_devs.json?group=month")
        .get() (err, res, body) ->
          try
            if (body.length > 0)
              json = JSON.parse(body)
              message = "\n"
              for item in json
                message += "-> Em #{item.month} tivemos #{item.total} pessoas nos eventos do CocoaHeads\n"

              msg.reply message
            else
              msg.reply "Nenhum evento cadastrado :("
          catch err
            msg.reply "#{err} Hã? Cuma? O que? Não consegui pegar as agendas! :rage:"
      else if (msg.message.match(/.*(chapter|cidade|capítulo|capitulo)/i))
        msg.http("http://www.cocoaheads.com.br/agendas/total_devs.json?group=chapter")
        .get() (err, res, body) ->
          try
            if (body.length > 0)
              json = JSON.parse(body)
              message = "\n"
              for item in json
                message += "-> Em #{item.chapter} já tivemos #{item.total} pessoas nos eventos do CocoaHeads\n"

              msg.reply message
            else
              msg.reply "Nenhum evento cadastrado :("
          catch err
            msg.reply "#{err} Hã? Cuma? O que? Não consegui pegar as agendas! :rage:"
      else
        msg.http("http://www.cocoaheads.com.br/agendas/total_devs.json?alltime=true")
        .get() (err, res, body) ->
          try
            if (body.length > 0)
              json = JSON.parse(body)
              messagem = "\n"
              for item in json
                messagem = "-> Já tivemos #{item.total} pessoas nos eventos do CocoaHeads\n"

              msg.reply messagem
            else
              msg.reply "Nenhum evento cadastrado :("
          catch err
            msg.reply "#{err} Hã? Cuma? O que? Não consegui pegar as agendas! :rage:"

    else
      msg.http("http://www.cocoaheads.com.br/agendas/rsvps.json")
      .get() (err, res, body) ->
        try
          if (body.length > 0)
            json = JSON.parse(body)
            messagem = "\n"
            for agenda in json
              data = new Date(agenda.data)
              mensagemBasica = "-> Em #{agenda.cidade} (#{data.getDate()}/#{data.getMonth() + 1}/#{data.getFullYear()}), temos #{agenda.rsvp_sim} confirmados, #{agenda.rsvp_talvez} talvez"

              if agenda.rsvp_espera > 0
                mensagemBasica += ". #{agenda.rsvp_espera} em espera"

              if agenda.rsvp_limite > 0
                if agenda.rsvp_restante > 0
                  mensagemBasica += ". #{agenda.rsvp_restante} vagas restantes."
                else
                  mensagemBasica += ". Vagas esgotadas :thumbsup:"
              else
                mensagemBasica += ". Não existe limite de vagas."

              messagem += "#{mensagemBasica}\n"
            msg.reply messagem
          else
            msg.reply "Nenhum evento em vista. Que tal marcar um? :punch:"
        catch err
          msg.reply "#{err} Hã? Cuma? O que? Não consegui pegar as agendas! :rage:"

  robot.respond /quantos eventos (já|ja) fizemos( )?/i, (msg) ->
    msg.http("http://www.cocoaheads.com.br/agendas/todas.json")
    .get() (err, res, body) ->
      try
        json = JSON.parse(body)
        msg.reply "Já fizemos um total de #{json.length} eventos. :metal:\n"
      catch err
        msg.reply "Hã? Cuma? O que? Não consegui pegar as agendas! :rage:"
