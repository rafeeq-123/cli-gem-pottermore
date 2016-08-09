require 'open-uri'
require 'pry'
require 'nokogiri'

class Pottermore::Scraper

  def initalize
     @all_books = @all_books
  end

  def audiobook_title
    doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/audio-books/us-english"))
      doc.collect do |ebook|
        title.text
      end
    end

  # def audiobook_price
  #   doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/audio-books/us-english")).css("span.product-summary__price")
  #     doc.collect do |price|
  #       price.text
  #     end
  #   end

  def ebook_title
    doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/us-english")).css("div.product-summary__title")
      doc.collect do |title|
        title.text
      end
    end

  def ebook_price
    doc = Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/us-english")).css("span.product-summary__price")
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

  def all_awards
    Nokogiri::HTML(open("http://www.harrypotter.bloomsbury.com/uk/jkrowling/awards/")).css("div.award-list.row li").collect do |award|
     award.text
    end
  end

  def all_souvenirs
    Nokogiri::HTML(open("https://cursedchildstore.com/collections/souvenirs")).css("h3.product-title").collect do |souvenir|
      souvenir.text
    end
  end

  def all_souvenir_price
    Nokogiri::HTML(open("https://cursedchildstore.com/collections/souvenirs")).css("p.product-price").collect do |price|
      price.text
    end
  end
end













