require 'rubygems'
require 'nokogiri'
require 'open-uri'


class Scrapper

    attr_accessor :townhal_mail_hash

  def initialize
    @arr_url = []
    @arr_townhal = []
    @arr_mail = []
    @townhal_mail_hash = []
  end

  def get_all_the_urls_of_val_doise_townhalls(url, url2)
    url_townhal(url, url2)
    townhal_mail
  end

  def url_townhal(url, url2)
    page = Nokogiri::HTML(open("#{url2}"))
    page.xpath('//a[@class = "lientxt"]').each do |node|
      a = node.values
      b = node.text
      @arr_townhal << b
      url_full = url + a[1].delete_prefix('.')
      page_townhal(url_full)
      @arr_url << url_full
    end
  end

  def page_townhal(url)
    c = []
    begin
      page3 = Nokogiri::HTML(open("#{url}"))
      page3.xpath('//td').each do |node|
        c << node.text
      end
      @arr_mail << c[7]
    rescue
  puts 'erreur'
    end
  end

  def townhal_mail
    size = @arr_mail.size - 1
    for i in 0..size
      @townhal_mail_hash[i] = {"name" => @arr_townhal[i], "email" => @arr_mail[i]}
    end
  end
end
