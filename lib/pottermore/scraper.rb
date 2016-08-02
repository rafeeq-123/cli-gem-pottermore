require 'open-uri'
require 'pry'
require 'nokogiri'

class Pottermore::Scraper
  @@all = ""
  def initalize
     @all_books = @all_books
  end

  def ebooks
     Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/us-english"))
  end

  def ebook_price
     ebooks.css("span.product-summary__price").collect do |price|
      price.text
    end
  end

  def books
     ebooks.css("div.product-summary__title").collect do |ebook|
      ebook.text
    end
  end

  def new_book
     ebooks.css("div.product-summary__title")[0].text
  end

  def new_book_price
     ebooks.css("span.product-summary__price").collect do |price|
      price.text
    end
  end

  def ebook_collection
     ebooks.css("div.product-summary__title")[1].text
  end

  def audiobooks
     Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/audio-books/us-english"))
  end

  def audiobook_collection
     audiobooks.css("div.product-summary__title")[0].text
  end

  def audiobooks_all
     audiobooks.css("div.product-summary__title").collect do |audiobook|
      audiobook.text
    end
  end

  def audiobook_price
     audiobooks.css("span.product-summary__price").collect do |price|
      price.text
    end
  end

  def enhanced_version
     Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/enhanced-editions"))
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

  def description_parser
     Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/harry_potter_and_the_cursed_child_ebook"))
  end

  def new_book_one_description
     description_parser.css("div.product-single__description p").text
  end

  def series_parser
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/harry_potter_and_the_sorcerers_stone_ebook1_us_english"))
  end

  def series_two_parser
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/harry_potter_and_the_chamber_of_secrets_ebook2_us_english"))
  end

  def series_three_parser
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/harry_potter_and_the_prisoner_of_azkaban_ebook3_us_english"))
  end

  def series_four_parser
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/harry_potter_and_the_goblet_of_fire_ebook4_us_english"))
  end

  def series_five_parser
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/harry_potter_and_the_order_of_the_phoenix_ebook5_us_english"))
  end

  def series_six_parser
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/harry_potter_and_the_half-blood_prince_ebook6_us_english"))
  end

  def series_seven_parser
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/harry_potter_and_the_deathly_hallows_ebook7_us_english"))
  end

  def qudditch_parser
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/quidditch_through_the_ages_ebook_us_english"))
  end

  def tale_of_beedle_parser
    Nokogiri::HTML(open("https://usd.shop.pottermore.com/collections/ebooks/products/the_tales_of_beedle_the_bard_ebook_us_english"))
  end

  def all_description
    all = ""

   all << series_parser.css("div.product-single__description").text
   all << series_two_parser.css("div.product-single__description").text
   all << series_three_parser.css("div.product-single__description").text
   all << series_four_parser.css("div.product-single__description").text
   all << series_five_parser.css("div.product-single__description").text
   all << series_six_parser.css("div.product-single__description").text
   all << series_seven_parser.css("div.product-single__description").text
   all << series_seven_parser.css("div.product-single__description").text
   all << qudditch_parser.css("div.product-single__description").text
   all << tale_of_beedle_parser.css("div.product-single__description").text

   puts all

  end

  def award_parser
    Nokogiri::HTML(open("http://www.harrypotter.bloomsbury.com/uk/jkrowling/awards/"))
  end

  def all_awards
    award_parser.css("div.award-list.row li").collect do |award|
     award.text
    end
  end

  def play_souvenirs_parser
    Nokogiri::HTML(open("https://cursedchildstore.com/collections/souvenirs"))
  end

  def all_souvenirs
    play_souvenirs_parser.css("h3.product-title").collect do |souvenir|
      souvenir.text
    end
  end

  def all_souvenir_price
    play_souvenirs_parser.css("p.product-price").collect do |price|
      price.text
    end
  end
end













