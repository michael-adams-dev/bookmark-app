class Menu
  def initialize
    @bookmarks = []
  end



  def display_menu
    puts "Welcome to the bookmarks app!"
    puts "1. View all bookmarks"
    puts "2. Create new bookmark"
    puts "3. Exit the app"
  end

  def selection
    print "> "
    gets.chomp.to_i
  end

  def router
    loop do
      display_menu
      case selection
      when 1
        # do something
      when 2
        # do something
      when 3
        exit
      end
    end
  end
end