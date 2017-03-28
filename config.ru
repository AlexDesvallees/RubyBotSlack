require 'sinatra'
require_relative './lib/reponse_bot'

InvalidTokenError = Class.new(Exception)

get '/' do
  raise(InvalidTokenError) unless params["token"] == '3L4YTiWWsepGyVTTBPXDukIZ'


  user = params.fetch('user_name')
  text = params.fetch('text').strip
  bot = Reponse_bot.new()

  case text
    when 'salut'
      bot.reponse

    when 'show me'
      bot.executeScript

    when 'commit'
      bot.commit

    else

      'Unknown command :cry:'

  end
end

run Sinatra::Application
