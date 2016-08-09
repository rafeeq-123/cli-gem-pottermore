require 'open-uri'
require 'pry'
require 'nokogiri'

class Pottermore::Scraper

attr_accessor :title, :price, :award, :souvenir

  def initalize(args)
     @all_books = args[:all_books]
     @price = args[:price]
     @title = args[:title]
     @award = args[:award]
     @souvenir = args[:souvenir]
  end

  def audio_noko
    doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/audio-books/us-english"))
  end

  def audiobook_title
    audio_noko.css("div.product-summary__title")
      doc.collect do |title|
        title.text
      end
    end

  def audiobook_price
    audio_noko.css("span.product-summary__price")
      doc.collect do |price|
        price.text
    end
  end

  def ebook_noko
    doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/us-english"))
  end

  def ebook_title
     ebook_noko.css("div.product-summary__title")
      doc.collect do |title|
        title.text
    end
  end

  def ebook_price
    ebook_noko.css("span.product-summary__price")
      doc.collect do |price|
       price.text
      end
    end

  def hd_title
    doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/enhanced-editions")).css("div.product-summary__title")
      doc.collect do |title|
        title.text
      end
    end

  def hd_price
    doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/enhanced-editions")).css("span.product-summary__price")
      doc.collect do |price|
         price.text
      end
    end

  def coming_soon
     Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/coming-soon")).css("div.product-summary__title").collect do |coming|
      coming.text
    end
  end

  def awards
    Nokogiri::HTML(open("http://www.harrypotter.bloomsbury.com/uk/jkrowling/awards/")).css("div.award-list.row li").collect do |award|
     award.text
    end
  end

  def souvenirs
    Nokogiri::HTML(open("https://cursedchildstore.com/collections/souvenirs")).css("h3.product-title").collect do |souvenir|
      souvenir.text
    end
  end

  def souvenir_price
    Nokogiri::HTML(open("https://cursedchildstore.com/collections/souvenirs")).css("p.product-price").collect do |price|
      price.text
    end
  end
end













