require 'colorize'
puts 'comando botinfo carregado com sucesso'.colorize(:green)
module Bot
  module DiscordCommands
    module Informations
      extend Discordrb::Commands::CommandContainer
      # botinfo command
      command(:botinfo) do |event|
        event.channel.send_embed do |embed|
          embed.title = '\🛠️▸botinfo'
          embed.colour = 0xc33139
          embed.description = "**
ola **" + event.user.name + "** aqui estao as minhas informacoes

Nome: L.E.M.S
Id: ID
Prefix: __exec:__
BotOwners: NillyTheLOL#5363 (adicionem seus nicks)
so lembrando estou no server **" + event.server.name + '** !**'
        end
      end
    end
  end
end
