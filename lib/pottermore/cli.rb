require 'pry'
require 'open-uri' #having a had time making binding.pry work.
require 'nokogiri'

class Pottermore::CLI

  def call
    @all_books = Pottermore::Scraper.new
    puts "Welcome to Shop Pottermore!"
    start_menu
  end

  def start_menu
    puts " What would you like to do? Press 1 to look at Ebooks, press 2 to look at Audiobook, press 3 to look at the Enhanced Version and press 4 to see upcoming books!!"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Would you like to look at the Ebook collection of all 7 instead press 7 for yes and 9 for no?"
      when "7"
        puts "Here is the collection:"
        puts "#{@all_books.ebook_collection}:" " Original price: #{@all_books.ebook_price[0]} Sale price:" "#{@all_books.ebook_price[1]}"
        puts "Would you like to go back to the menu? press 10"
      when "9"
        puts "Here are the available books:"
        puts "*************************************************************"
        ebook_display
        puts "Would you like to go back to the menu? press 10"
      when "2"
        puts "Would you like to look at the Audiobook collection of all 7 instead 0 for yes and 6 for no?"
      when "0"
        puts "Here is the collection:"
        puts "#{@all_books.audiobook_collection}:" " Original price: #{@all_books.audiobook_price[0]} Sale price:" "#{@all_books.audiobook_price[1]}"
        puts "Would you like to go back to the menu? press 10"
      when "6"
        puts "Here are the available Audiobooks:"
        puts "*************************************************************"
        audiobook_display
        puts "Would you like to go back to the menu? press 10"
      when "3"
        puts "Here are the Enhanced Versions:"
        puts "*************************************************************"
        enhanced_display
        puts "Would you like to go back to the menu? press 10"
      when "4"
        puts "Here are the coming soon in the world of Harry Potter!"
        puts "*************************************************************"
        puts "Coming soon: #{@all_books.coming_soon_all[0]}" "(No price yet)"
        puts "Coming soon: #{@all_books.coming_soon_all[1]}  No price yet"
        puts "Would you like to go back to the menu? press 10"
      when "10"
        puts "What would you like to do? Press 1 to look at Ebooks, press 2 to look at Audiobook, press 3 to look at the Enhanced Version and press 4 to see upcoming books!!"
      when "exit"
        puts "Goodbye and come see us again!!" #I need to think of something to put there
      end

  def ebook_display
   @all_books.books.each.with_index do |ecollect, index|
   # @all_books.ebook_price
     puts "Ebook #{index+1}: #{ecollect}"
    end
  end

  def audiobook_display
    @all_books.audiobooks_all.each.with_index do |abook, index|
     # @all_books.audiobook_price
      puts "Audiobook #{index+1}: #{abook}"
    end
  end

  def enhanced_display
    @all_books.enhanced_all.each.with_index do |hd, index|
    #  @all_books.ev_price
      puts "Enhanced Version #{index+1}: #{hd}"
    end
  end



    end
  end
end