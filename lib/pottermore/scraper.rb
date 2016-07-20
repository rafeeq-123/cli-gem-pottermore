require 'open-uri'
require 'pry' #having a had time making binding.pry work.
require 'nokogiri'

class Pottermore::Scraper


  def initalize
   @all_books = @all_books
  end

  def ebooks
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/us-english"))
   # book_two = doc.css("div.product-summary__title")[2].text
   # book_three = doc.css("div.product-summary__title")[3].text
   # book_four = doc.css("div.product-summary__title")[4].text
   # book_five = doc.css("div.product-summary__title")[5].text
   # book_six = doc.css("div.product-summary__title")[6].text
   # book_seven = doc.css("div.product-summary__title")[7].text
   #   #doc.css("div.product-summary__title").each_with_index do |index, book|
     #  book

   #should have used iteration
   # I also want to add price
  #
  # end
  end

  def ebook_collection
    ebooks.css("div.product-summary__title")[0].text
  end

  def books
    ebooks.css("div.product-summary__title").collect do |ebook|
      ebook.text
    end
  end


  def audiobooks
   Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/audio-books/us-english"))
    # audiobook_one = doc.css("div.product-summary__title")[1].text
    # audiobook_two = doc.css("div.product-summary__title")[2].text
    # audiobook_three = doc.css("div.product-summary__title")[3].text
    # audiobook_four = doc.css("div.product-summary__title")[4].text
    # audiobook_five = doc.css("div.product-summary__title")[5].text
    # audiobook_six = doc.css("div.product-summary__title")[6].text
    # audiobook_seven = doc.css("div.product-summary__title")[7].text


  # audiobook_collection = doc.css("div.product-summary__title")[0].text
   # binding.pry
  end

  def audiobook_collection
    audiobooks.css("div.product-summary__title")[0].text
  end

   def audiobooks_all
    audiobooks.css("div.product-summary__title").collect do |audiobook|
      audiobook.text
    end
  end

  def ebook_price
    ebooks.css("span.product-summary__price").collect do |price|
      #binding.pry
      price.text
    end
  end

  def audiobook_price
    audiobooks.css("span.product-summary__price").collect do |price|

  end



  def self.news

  end
end
#