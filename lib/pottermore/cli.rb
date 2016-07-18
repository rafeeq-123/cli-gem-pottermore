require 'pry'
class Pottermore::CLI

  def call
    puts "Welcome to Pottermore!"
    start_menu
    @ebooks = ebooks
    @audiobooks = audiobooks
  end

  def start_menu
    puts " What would you like to do? Press 1 to look at Ebooks, press 2 to look at Audiobook, press 3 to look at the lastest news and press 4 to see upcoming events..."
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Here are the available Ebooks:"
        puts @ebooks
        puts "Would you like to look at the collection of all 7 instead Y/N?"
      when "y"
        puts "Here is the collection:"
      when "n"
        puts "Here are the available Ebooks:"
        #want to add an option that allow the client to also choose the whole collection of HP instead of just one book
      when "2"
        puts "Here are the available Audiobooks:"
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