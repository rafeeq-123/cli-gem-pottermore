require 'open-uri'
require 'pry' #having a had time making binding.pry work.
require 'nokogiri'

class Scraper #::CLI

  attr_accessor :url

  def initalize
    @ebooks = ebooks
    @audiobooks = audiobooks
    @news = news
    @ebc = ebc #ebook collection
    @abc = abc #audiobook collection
  end

  def self.ebooks
   doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/us-english"))
   @ebooks = doc.css("div.product-summary__title").text
   @ebc = doc.css("div.product-summary__title")[0].text
   binding.pry
  end

  def self.audiobooks

  end

  def self.news

  end
end
