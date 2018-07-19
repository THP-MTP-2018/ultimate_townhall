require 'json'
require_relative "/Users/radorakoto/Documents/jeudi_19_07/ultimate_townhall/lib/app/townhalls_scrapper.rb"

class To_JSON
  attr_accessor :hash_mail
  def initialize

    @hash_mail = []
  end

  def get_mail(url, url2, dep)
    @scrapper = Scrapper.new
    @scrapper.get_all_the_urls_of_townhalls(url, url2, dep)
    @hash_mail = @scrapper.townhal_mail_hash
  end

  def write_JSON(json, hash_mail)
    File.open(json, "w") do |f|
        f.write(JSON.pretty_generate(hash_mail))
    end
  end


end

def perform
  # adder = To_JSON.new
  # adder.get_mail("http://annuaire-des-mairies.com", "http://annuaire-des-mairies.com/herault.html", "herault")
  # adder.write_JSON("/Users/radorakoto/Documents/jeudi_19_07/ultimate_townhall/db/herault.json", adder.hash_mail)
  # adder2 = To_JSON.new
  # adder2.get_mail("http://annuaire-des-mairies.com", "http://annuaire-des-mairies.com/aude.html", "aude")
  # adder2.write_JSON("/Users/radorakoto/Documents/jeudi_19_07/ultimate_townhall/db/aude.json", adder2.hash_mail)
  adder3 = To_JSON.new
  adder3.get_mail("http://annuaire-des-mairies.com", "http://annuaire-des-mairies.com/gard.html", "gard")
  adder3.write_JSON("/Users/radorakoto/Documents/jeudi_19_07/ultimate_townhall/db/gard.json", adder3.hash_mail)


end

perform
