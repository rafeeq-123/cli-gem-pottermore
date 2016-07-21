require 'pry'
require 'open-uri' #having a had time making binding.pry work.
require 'nokogiri'

class Pottermore::CLI

  def call
    @all_books = Pottermore::Scraper.new
    #@all_price = Pottermore::Scraper.new
    puts "Welcome to Shop Pottermore!"
    start_menu
  end

  # def book_list
  # @ebooks = Pottermore::Scraper.ebooks
  # end

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
      when "9"
        puts "Here are the available books:"
        puts "*************************************************************"
        puts "Ebook one:" "#{@all_books.books[1]}"  "#{@all_books.ebook_price[2]}" # this is different because the first element is the sale price
        # binding.pry
        puts "Ebook two:" "#{@all_books.books[2]}"  "#{@all_books.ebook_price[3]}"
        puts "Ebook three:" "#{@all_books.books[3]}"  "#{@all_books.ebook_price[4]}"
        puts "Ebook four:" "#{@all_books.books[4]}"  "#{@all_books.ebook_price[5]}"
        puts "Ebook five:" "#{@all_books.books[5]}"  "#{@all_books.ebook_price[6]}"
        puts "Ebook six:" "#{@all_books.books[6]}"  "#{@all_books.ebook_price[7]}"
        puts "Ebook seven:" "#{@all_books.books[7]}"  "#{@all_books.ebook_price[8]}"
        puts "Other ebooks by J.K Rowling:" "#{@all_books.books[9]}" "#{@all_books.ebook_price[9]}"  "#{@all_books.books[10]}" "#{@all_books.ebook_price[10]}"
        #maybe I want to list the books 1-7?
        #want to add an option that allow the client to also choose the whole collection of HP instead of just one book
      when "2"
        puts "Would you like to look at the Audiobook collection of all 7 instead 0 for yes and 6 for no?"
      when "0" # this is reverting back to the about y/n, need to fix that
        puts "Here is the collection:"
        puts "#{@all_books.audiobook_collection}:" " Original price: #{@all_books.audiobook_price[0]} Sale price:" "#{@all_books.audiobook_price[1]}"
      when "6"
        puts "Here are the available books:"
        puts "*************************************************************"
        puts "Audiobook one:" "#{@all_books.audiobooks_all[1]}" "#{@all_books.audiobook_price[2]}"
        puts "Audiobook two:" "#{@all_books.audiobooks_all[2]}" "#{@all_books.audiobook_price[3]}"
        puts "Audiobook three:" "#{@all_books.audiobooks_all[3]}" "#{@all_books.audiobook_price[4]}"
        puts "Audiobook four:" "#{@all_books.audiobooks_all[4]}" "#{@all_books.audiobook_price[5]}"
        puts "Audiobook five:" "#{@all_books.audiobooks_all[5]}" "#{@all_books.audiobook_price[6]}"
        puts "Audiobook six:" "#{@all_books.audiobooks_all[6]}" "#{@all_books.audiobook_price[7]}"
        puts "Audiobook seven:" "#{@all_books.audiobooks_all[7]}" "#{@all_books.audiobook_price[8]}"
        #puts "Other audibooks by J.K Rowling:" "#{@all_books.audiobooks_all[8]}" "#{@all_books.audiobook_price[9]}" "and" "#{@all_books.audiobooks_all[9]}" "#{@all_books.audiobook_price[10]}"
      when "3"
        puts "Here are the Enhanced Versions:"
        puts "*************************************************************"
        puts "Enhanced Version one:" "#{@all_books.enhanced_all[0]}" "#{@all_books.ev_price[0]}"
        puts "Enhanced Version two:" "#{@all_books.enhanced_all[1]}"  "#{@all_books.ev_price[1]}"
        puts "Enhanced Version three:" "#{@all_books.enhanced_all[2]}" "#{@all_books.ev_price[2]}"
        puts "Enhanced Version four:" "#{@all_books.enhanced_all[3]}" "#{@all_books.ev_price[3]}"
        puts "Enhanced Version five:" "#{@all_books.enhanced_all[4]}" "#{@all_books.ev_price[4]}"
        puts "Enhanced Version six:" "#{@all_books.enhanced_all[5]}" "#{@all_books.ev_price[5]}"
        puts "Enhanced Version seven:" "#{@all_books.enhanced_all[6]}" "#{@all_books.ev_price[6]}"

      when "4"
        puts "Here are the coming soon in the world of Harry Potter!"
        puts "*************************************************************"
        puts "Coming soon: #{@all_books.coming_soon_all[0]}"
        puts "Coming soon: #{@all_books.coming_soon_all[1]}"
      when "exit"
        puts "Goodbye and come see us again!!" #I need to think of something to put there
      end
    end
  end
end