require_relative 'bookmark_helper'

class Menu
  include BookmarkHelper

  def initialize
    @bookmark_repository = BookmarkRepository.new
  end

  def display_menu
    puts 'Welcome to the bookmarks app!'
    puts '1. View all bookmarks'
    puts '2. Create new bookmark'
    puts '3. Exit the app'
  end

  def selection
    print '> '
    gets.chomp.to_i
  end

  def terminal_table
    rows = @bookmarks.map do |bookmark|
      [bookmark.id, bookmark.title, bookmark.url, bookmark.description, bookmark.tags]
    end
    table = Terminal::Table.new({headings: HEADINGS, rows: rows})
    puts table
  end

  def router
    loop do
      display_menu
      case selection
      when 1
        terminal_table
      when 2
        @bookmark_repository.create_bookmark
      when 3
        @bookmark_repository.write_bookmarks
        exit
      end
    end
  end
end
