require 'pry'
require 'open-uri' #having a had time making binding.pry work.
require 'nokogiri'

class Pottermore::CLI

  def call
    puts "Welcome to Pottermore!"
    start_menu
    ebooks
  end

  def self.ebooks

  # @@list << self.ebooks
  # @@list
   binding.pry
  end


  def start_menu
    puts " What would you like to do? Press 1 to look at Ebooks, press 2 to look at Audiobook, press 3 to look at the lastest news and press 4 to see upcoming events..."
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Would you like to look at the collection of all 7 instead Y/N?"
      when "y"
        puts "Here is the collection:"
        puts "#{book_collection}:"
      when "n"
        puts "Here are the available Ebooks:"
        puts "*************************************************************"
        puts "Book one:" "#{book_one}"
        puts "Book two:" "#{book_two}"
        puts "Book three:" "#{book_three}"
        puts "Book four:" "#{book_four}"
        puts "Book five:" "#{book_five}"
        puts "Book six:" "#{book_six}"
        puts "Book seven:" "#{book_seven}"
        @ebooks #maybe I want to list the books 1-7?
        #want to add an option that allow the client to also choose the whole collection of HP instead of just one book
      when "2"
        puts "Would you like to look at the collection of all 7 instead Y/N?"
      when "y"
        puts "Here is the collection:"
        puts "#{audiobook_collection}:"
      when "n"
        puts "Here are the available Audiobooks:"
        puts "*************************************************************"
        puts "Book one:" "#{audiobook_one}"
        puts "Book two:" "#{audiobook_two}"
        puts "Book three:" "#{audiobook_three}"
        puts "Book four:" "#{audiobook_four}"
        puts "Book five:" "#{audiobook_five}"
        puts "Book six:" "#{audiobook_six}"
        puts "Book seven:" "#{audiobook_seven}"
      when "3"
        puts "Here is the lastest Potter related news!"
      when "4"
        puts "Here are the upcoming events in the world of Harry Potter!"
      else
        puts "I open at the close...1-4, please!" #I need to think of something to put there
      end
    end
  end
end