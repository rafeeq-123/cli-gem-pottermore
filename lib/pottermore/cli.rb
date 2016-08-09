require 'pry'
require 'open-uri'
require 'nokogiri'

class Pottermore::CLI

  def call
    @all_books = Pottermore::Scraper.new
    puts "Welcome to Pottermore!"
    start_menu
  end

  def start_menu

    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input



  end

  def ebook_display
     @all_books.ebook_title.each_with_index do |book_title, index|
      puts "Ebook #{index+1} #{book_title} price: #{@all_books.ebook_price[index+2]}"
    end
  end

  def audiobook_display
    @all_books.audiobook_title.each_with_index do |book_title, index|
      puts "Ebook #{index+1} #{book_title} price: #{@all_books.audiobook_price[index+2]}"
    end
  end

  def enhanced_display
      @all_books.hd_title.each_with_index do |book_title, index|
      puts "Ebook #{index+1} #{book_title} price: #{@all_books.hd_price[index+2]}"
    end
  end

  def list_of_souvenirs
    @all_books.all_souvenirs.each_with_index do |souvenir, index|
      puts "List of souvenirs #{index+1} #{souvenir}" "price: #{@all_books.all_souvenir_price[index+0]}"
     end
   end

  def list_awards
    @all_books.all_awards.each_with_index do |award, index|
      puts "Award #{index+1} #{award}"
     end
   end

   def numbers
    numbers = %w[1,2,3,4,5,6,7,8,9,10,11,12,13,14]
   end
  end
 end
end












