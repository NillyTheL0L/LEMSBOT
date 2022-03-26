require 'colorize'
module Bot
    module DiscordCommands
        module Informations
            extend Discordrb::Commands::CommandContainer

            #help command
            command(:cu) do |event| 
            puts 'comando cu carregado com sucesso'.colorize(:green)
                event.channel.send_embed do |embed|
								embed.title = '\📕▸ola ' + event.user.name + ' Como voce esta'
                embed.colour = 0xc33139
                embed.description = 'opa eae'
                  ## vai funcioanar sim confia deixa de ser retardado ou fdppodemos por cores no console log
                end 
						end 
					
        end
    end
end