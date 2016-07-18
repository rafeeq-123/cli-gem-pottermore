require 'pry'
class Pottermore::CLI

  def call
    puts "Welcome to Pottermore!"
    start_menu
    @ebooks = Scraper::CLI.ebooks
    @audiobooks = Scraper::CLI.audiobooks
  end

  def start_menu
    puts " What would you like to do? Press 1 to look at Ebooks, press 2 to look at Audiobook, press 3 to look at the lastest news and press 4 to see upcoming events..."
    input = nil
    while input != "exit"
      input = gets.strip
      case input
      when "1"
        puts "Here are the available Ebooks:"
      when "2"
        puts "Here are the available Audiobooks:"
      when "3"
        puts "Here is the lastest Potter related news!"
      when "4"
        puts "Here are the upcoming events in the world of Harry Potter!"
      else
        puts "I open at the close..." #I need to think of something to put there
      end
    end
  end
end