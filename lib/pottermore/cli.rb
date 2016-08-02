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
    puts " What would you like to do? Press 1 for Ebooks, 2 for Audiobook, 3 to look Enhanced Version, 4 for upcoming books and 5?"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input

      when "1"
        puts "Would you like to look at the Ebook collection of all 7 instead press 7 for yes and 9 for no?"
      when "7"
        puts "Here is the collection with description:"
        puts "#{@all_books.ebook_collection}:" " Original price: #{@all_books.ebook_price[1]} Sale price:" "#{@all_books.ebook_price[2]}"
        puts "*************************************************************"
        puts "#{@all_books.all_description}"
        puts "Would you like to go back to the menu? press 10 or would you like to see a list of award press 11"
      when "9"
        puts "Here are the available books:"
        puts "*************************************************************"
        ebook_display
        puts "Would you like to go back to the menu? press 10 or would you like to see a list of award press 11"
      when "2"
        puts "Would you like to look at the Audiobook collection of all 7 instead 0 for yes and 6 for no?"
      when "0"
        puts "Here is the collection with description:"
        puts "#{@all_books.audiobook_collection}:" " Original price: #{@all_books.audiobook_price[0]} Sale price:" "#{@all_books.audiobook_price[1]}"
        puts "*************************************************************"
        puts "#{@all_books.all_description}"
        puts "Would you like to go back to the menu? press 10 or would you like to see a list of award press 11"
      when "6"
        puts "Here are the available Audiobooks:"
        puts "*************************************************************"
        audiobook_display
        puts "Would you like to go back to the menu? press 10 or would you like to see a list of award press 11"
      when "3"
        puts "Here are the Enhanced Versions:"
        puts "*************************************************************"
        enhanced_display
        puts "Would you like to go back to the menu? press 10 or would you like to see a list of award press 11"
      when "4"
        puts "Here are the coming soon in the world of Harry Potter!"
        puts "*************************************************************"
        puts "Coming soon: #{@all_books.coming_soon_all[0]}" "(No price yet)"
      when "5"
        puts "Here are the new book(s)discription"
        puts "**************************************************************"
        puts "#{@all_books.new_book} price: #{@all_books.new_book_price[0]}"
        puts "#{@all_books.new_book_one_description}"
        puts "Would you like to see souvenirs? Press 12 or back to the menu 10"
      when "12"
        puts "List of souvenirs:"
        puts "**************************************************************"
        list_of_souvenirs
        puts "Would you like to go back to the menu? press 10"
      when "11"
        puts "Here is a list of awards"
        puts "**************************************************************"
        list_awards
        puts "Would you like to go back to the menu? press 10"
      when "10"
        puts " What would you like to do? Press 1 for Ebooks, 2 for Audiobook, 3 to look Enhanced Version, 4 for upcoming books and 5?"
      when "exit"
        puts "Goodbye and come see us again!!"
      end

  def ebook_display
    only_books = @all_books.books
    only_books.shift
    only_books.each_with_index do |book_title, index|
      puts "Ebook #{index+1} #{book_title} price: #{@all_books.ebook_price[index+2]}"
    end
  end

  def audiobook_display
    only_books = @all_books.audiobooks_all
    only_books.shift
    only_books.each_with_index do |book_title, index|
      puts "Audiobook #{index+1} #{book_title} price: #{@all_books.audiobook_price[index+2]}"
    end
  end

  def enhanced_display
     @all_books.enhanced_all.each_with_index do |book_title, index|
      puts "Enhanced Version #{index+1} #{book_title} price: #{@all_books.ev_price[index+0]}"
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
  end
 end
end











