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
hello **" + event.user.name + "** here is my infos

Name: L.E.M.S
Id: ID
Prefix: _
BotOwners: NillyTheLOL#5363 (adicionem seus nicks)
im on server **" + event.server.name + '** !**'
					 embed.timestamp = Time.now
        end
      end
    end
  end
end
