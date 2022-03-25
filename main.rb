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

require "net/http"
require "uri"
## principal gem
require 'discordrb'
## gem opcional para cores no debug
require 'colorize'
## gem para o comando r.joke
require 'dad_jokes'
## gem para guardar a env do token
require 'dotenv'


bot = Discordrb::Commands::CommandBot.new token: 'OTU3MDE5Nzg3OTc0ODExNzQx.Yj4sIg.Xb4DIh4Hbak6mnkLihYb7geaZt8', prefix: 'exec:'
puts "Link de convite: #{bot.invite_url}.".colorize(:red)
puts "bot ligado com sucesso XD".colorize(:blue)

## bot commands
bot.mention do |event|
  event.respond 'Hi ' + event.user.name + ' im L.E.M.S my prefix: exec: and im a bot created in ruby lang'
end

bot.command :botinfo do |event|
	event.respond 'Name: L.E.M.S
	ID: 955215978101350440
	Owner: NillyTheLOL#5363
	OwnerID: 825888178274959390'
end

bot.command :joke do |event|
	event.respond DadJokes.random
end

bot.command :help do |event|
  event.respond 'Hi ' + event.user.name + ' here is my commands
	help
	bold (anything)
	italic (anything)
	off (only staffs)
	eval (only staffs)
	invite
	search
	randomnum
	joke
	botinfo'
end

bot.command :embed do |builder|
  builder.content = 'Hello world!'
  builder.add_embed do |embed|
    embed.title = 'Embed title'
    embed.description = 'Embed description'
    embed.timestamp = Time.now
	end
end

bot.command :bold do |_event, *args|
  "**#{args.join(' ')}**"
end

bot.command :search do |_event, *args|
	"https://www.google.com/search?q=#{args.join(' ')}"
end

bot.command :italic do |_event, *args|
  "*#{args.join(' ')}*"
end

bot.command(:off, help_available: false) do |event|
  break unless event.user.id == 825888178274959390

  bot.send_message(event.channel.id, 'Bye')
  exit
end

#bot.command(:invite, chain_usable: false) do |event|
bot.command(:invite) do |event|
	bot.invite_url
end

bot.command(:eval, help_available: false) do |event, *code|
  break unless event.user.id == 825888178274959390

  begin
    eval code.join(' ')
  rescue StandardError
    'Bruh'
  end
end

bot.command(:randomnum, min_args: 0, max_args: 2, description: 'Generates a random number between 0 and 1, 0 and max or min and max.', usage: 'random [min/max] [max]') do |_event, min, max|
  if max
    rand(min.to_i..max.to_i)
  elsif min
    rand(0..min.to_i)
  else
    rand
  end
end

#bot.command :long do |event|
#  event << 'This is a long message.'
##  event << 'This is an easy way to do such long messages, or to create lines that should only be sent conditionally.'
#  event << 'Anyway, have a nice day.'
#end

bot.run
