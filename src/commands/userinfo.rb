require 'colorize'
puts 'comando userinfo carregado com sucesso'.colorize(:green)
module Bot
  module DiscordCommands
    module Informations
      extend Discordrb::Commands::CommandContainer
      # botinfo command
      command(:userinfo) do |event|
        event.channel.send_embed do |embed|
          embed.title = '\👨▸userinfo'
          embed.colour = 0xc33139
          embed.description = "**
hello **" + event.user.name + "** here is you infos

Name: " + event.user.name + "
Id: 
Prefix: _____
BotOwners: NillyTheLOL#5363 

im on server **" + event.server.name + '** !**'
					 embed.timestamp = Time.now
        end
      end
    end
  end
end
