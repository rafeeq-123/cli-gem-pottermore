require 'pry'
require 'open-uri'
require 'nokogiri'

class Pottermore::CLI

  def call
    @all_books = Pottermore::Scraper.new
    puts "Welcome to Pottermore!"
    puts "Would you like to see  ebooks 1, audiobooks 2, enhanced books 3, gifts 4 or misalencous 5 ? Type would you would like!!"
    start_menu
  end

  def start_menu
    input = ""
    while input != "exit"

    input = gets.chomp.downcase
      case input
      when "1"
        ebook_display
        message
      when "2"
        audiobook_display
        message
      when "3"
        enhanced_display
        message
      when "4"
        list_of_souvenirs
        message
      when "5"
        list_awards
        message
      end
    end
  end

  def ebook_display
     @all_books.ebook_title.each_with_index do |book_title, index|
      puts "Ebook #{index+1} #{book_title} price: #{@all_books.ebook_price[index+1]}"
    end
  end

  def audiobook_display
    @all_books.audiobook_title.each_with_index do |book_title, index|
      puts "Audiobooks #{index+1} #{book_title} price: #{@all_books.audiobook_price[index+2]}"
    end
  end

  def enhanced_display
      @all_books.hd_title.each_with_index do |book_title, index|
      puts "Enhanced #{index+1} #{book_title} price: #{@all_books.hd_price[index+0]}"
    end
  end

  def list_of_souvenirs
    @all_books.souvenirs.each_with_index do |souvenir, index|
      puts "List of souvenirs #{index+1} #{souvenir} price: #{@all_books.souvenir_price[index+0]}"
     end
   end

  def list_awards
    @all_books.awards.each_with_index do |award, index|
      puts "Award #{index+1} #{award}"
     end
   end

  def message
    puts "*****************************************************************"
    puts "Would you like to see  ebooks 1, audiobooks 2, enhanced books 3, gifts 4 or misalencous 5 ? Type would you would like!!"
    puts "*****************************************************************"
  end

 end













