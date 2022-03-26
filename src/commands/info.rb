require 'colorize'
puts 'comando help carregado com sucesso'.colorize(:green)
module Bot
    module DiscordCommands
        module Informations
            extend Discordrb::Commands::CommandContainer
# vou te banir da repl
            #help command
            command(:help) do |event| 
            
                event.channel.send_embed do |embed|
								embed.title = '\📕▸Ajuda'
                embed.colour = 0xc33139
                embed.description = "**
ola **" + event.user.name + "** aqui estao meus comandos

Utilidades: help
Info: botinfo, userinfo
									
									
so lembrando estou no server **" + event.server.name + "** !**"
                 
                  
                end
						end 
					
        end
    end
end