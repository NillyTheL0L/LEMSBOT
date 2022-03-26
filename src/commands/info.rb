require 'colorize'
puts 'comando help carregado com sucesso'.colorize(:green)
module Bot
  module DiscordCommands
    module Informations
      extend Discordrb::Commands::CommandContainer
      # vou te banir da repl
      # help command
      command(:help) do |event|
        event.channel.send_embed do |embed|
          embed.title = '\📕▸Help'
          embed.colour = 0xc33139
          embed.description = "**
hello **" + event.user.name + "** here is my commands

Utility: help
Info: botinfo, userinfo
Fun: joke
im on server **" + event.server.name + "** !**

									"
        end
      end
    end
  end
end
