require 'sinatra'
require_relative './lib/reponse_bot'

InvalidTokenError = Class.new(Exception)

post '/' do
  raise(InvalidTokenError) unless params["token"] == '3L4YTiWWsepGyVTTBPXDukIZ'


  user = params.fetch('user_name')
  text = params.fetch('text').strip
  bot = Reponse_bot.new

  case text
    when 'when'
      bot.reponse
    when 'what'

      <<-TEXT
The next Hey! event has two lectures planned. The first one is with Rich Fiddaman discussing everything hospitality. The second is with Matt Dix discussing Leeds Indie Food Festival.
 
https://heyst.ac/lectures/a-pint-with-the-pub-landlord
 
https://heyst.ac/lectures/kickstarting-a-city-wide-food-festival
      TEXT

    else

      'Unknown command :cry:'

  end
end

run Sinatra::Application
