require_relative '../../lib/app/townhalls_follower.rb'
require_relative '../../lib/app/townhalls_mailer.rb'
require_relative '../../lib/app/townhalls_adder_to_db.rb'
# lance le programme pour l'envoie des emails
def perform
  s = Mailer.new
  s.reader_json
  s.tableau.each do |m|
  s.send_email(m[0],m[1])
  end
end
# lance le programme pour follow les mairies
def perform_2
  bot = Bottwitter.new
  bot.json_read
  bot.bot_follow
end
# lance le programme pour stocker les données scrappé dans les JSON
def perform_3
  adder = To_JSON.new
  adder.get_mail("http://annuaire-des-mairies.com", "http://annuaire-des-mairies.com/herault.html", "herault")
  adder.write_JSON("../../db/herault.json", adder.hash_mail)

  adder2 = To_JSON.new
  adder2.get_mail("http://annuaire-des-mairies.com", "http://annuaire-des-mairies.com/aveyron.html", "aveyron")
  adder2.write_JSON("../../db/aveyron.json", adder2.hash_mail)

  adder3 = To_JSON.new
  adder3.get_mail("http://annuaire-des-mairies.com", "http://annuaire-des-mairies.com/gard.html", "gard")
  adder3.write_JSON("../../db/gard.json", adder3.hash_mail)
end
