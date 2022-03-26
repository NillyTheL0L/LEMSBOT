require 'colorize'
puts 'comando teste carregado com sucesso'.colorize(:green)
module Bot
  module DiscordCommands
    module Informations
      extend Discordrb::Commands::CommandContainer
      # vou te banir da repl
      # help command
      command(:test) do |event|
        event.channel.send_embed do |embed|
          embed.title = '\📕▸test'
          embed.colour = 0xc33139
          embed.description = "
hello"
				 embed.timestamp = Time.now
        end
      end
    end
  end
end
