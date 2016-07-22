require 'open-uri'
require 'pry'
require 'nokogiri'

class Pottermore::Scraper

  def initalize
   @all_books = @all_books
  end

  def ebooks
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/us-english"))
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
  end

  def enhanced_version
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/enhanced-editions"))
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
      price.text
    end
  end

  def audiobook_price
    audiobooks.css("span.product-summary__price").collect do |price|
      price.text
    end
  end

  def enhanced_all
    enhanced_version.css("div.product-summary__title").collect do |ev|
      ev.text
    end
  end

  def ev_price
     enhanced_version.css("span.product-summary__price").collect do |price|
      price.text
    end
  end

  def coming_soon
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/coming-soon"))
  end

  def coming_soon_all
    coming_soon.css("div.product-summary__title").collect do |cs|
      cs.text
    end
  end
end







