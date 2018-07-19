require "dotenv"
require "pry"
require "twitter"

Dotenv.load

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_KEY_SECRET"]
  config.access_token        = ENV["TWITTER_API_TOKEN"]
  config.access_token_secret = ENV["TWITTER_API_TOKEN_SECRET"]
end

class Bottwitter

  def initialze(city)
    names.each do |name|
      @twitter = client.user_search(name)
      puts "#{client.follow(@twitter.first[:screen_name])}"
    end
  end

end

# input all the names here or grab them from your database or somewhere else.
names = ['ville de MONTPELLIER', 'ville de MARSEILLE', 'ville de PARIS', 'ville de LYON']
