require 'open-uri'
require 'pry' #having a had time making binding.pry work.
require 'nokogiri'

class Scraper::CLI

  attr_accessor :url

  def initalize
    @ebooks = ebooks
    @audiobooks = audiobooks
    @news = news
  end

  def self.ebooks
   doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/us-english"))
   binding.pry
  end

  def self.audiobooks

  end

  def self.news

  end
end