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


	## eval
 bot.command(:eval, help_available: false) do |event, *code|
  break unless event.user.id == 825888178274959390 # Replace number with your ID

  begin
    eval code.join(' ')
  rescue StandardError
    'An error occurred 😞'
  end
 end
 
		# on or off
	puts 'bot ligado'.colorize(:red)
    # Run the bot
    bot.run
end
