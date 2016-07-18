require 'open-uri'
require 'pry' #having a had time making binding.pry work.
require 'nokogiri'

class Scraper

  attr_accessor :url

  def initalize
    @ebooks = ebooks
    @audiobooks = audiobooks
    @news = news
 #   @ebc = ebc #ebook collection
  #  @abc = abc #audiobook collection
   # @@list = []
  end

  def self.ebooks
   doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/us-english"))
   book = doc.css("div.product-summary__title").text do |book|
    book_one = book[1]
    book_two = book[2]
    puts book_two
    binding.pry

   #should have used iteration^^
    book_collection = doc.css("div.product-summary__title")[0].text
   # I also want to add price
  # @@list << self.ebooks
  # @@list
   end
  end

  def self.audiobooks
   doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/audio-books/us-english"))
   audiobook_one = doc.css("div.product-summary__title")[1].text
   audiobook_two = doc.css("div.product-summary__title")[2].text
   audiobook_three = doc.css("div.product-summary__title")[3].text
   audiobook_four = doc.css("div.product-summary__title")[4].text
   audiobook_five = doc.css("div.product-summary__title")[5].text
   audiobook_six = doc.css("div.product-summary__title")[6].text
   audiobook_seven = doc.css("div.product-summary__title")[7].text

   #
   audiobook_collection = doc.css("div.product-summary__title")[0].text
   binding.pry
  end

  def self.news

  end
end
