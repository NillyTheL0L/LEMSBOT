#################################################
############### CHAT ###########################
## This chat is for talking with my contribuito
## mall mark is in brazilian portuguese please translate
################################################
## oi cep to procurando apis 15:25
## cep ta ai? 18:54
##
## escreve ai em cima 18:59
##
##
##
##
##
##
##
##
##
##
##
##
##
################################################

require 'net/http'
require 'uri'
## principal gem
require 'discordrb'
## gem opcional para cores no debug
require 'colorize'
## gem para o comando r.joke
require 'dad_jokes'
## gem para guardar a env do token
require 'dotenv'
require 'configatron'
require_relative 'config/config.rb'

module Bot
    bot = Discordrb::Commands::CommandBot.new token: configatron.token, prefix: configatron.prefix

    # Discord commands
    module DiscordCommands; end

    Dir['src/commands/*.rb'].each { |mod| load mod }
    DiscordCommands.constants.each do |mod|
    bot.include! DiscordCommands.const_get mod
    end

    # Discord events
    module DiscordEvents; end

    Dir['src/events/*.rb'].each { |mod| load mod }
    DiscordEvents.constants.each do |mod|
    bot.include! DiscordEvents.const_get mod
    end

		# on or off
	puts 'bot ligado'.colorize(:red)
    # Run the bot
    bot.run
end
