require 'colorize'
require 'dad_jokes'
puts 'comando joke carregado com sucesso'.colorize(:green)
module Bot
    module DiscordCommands
        module Informations
            extend Discordrb::Commands::CommandContainer
# vou te banir da repl
            #help command
            command(:joke) do |event| 
            
                event.channel.send_embed do |embed|
								embed.title = '\😁▸Joke'
                embed.colour = 0xc33139
                embed.description = DadJokes.random
                 
                  
                end
						end 
					
        end
    end
end