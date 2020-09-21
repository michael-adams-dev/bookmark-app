class Bookmark
  attr_reader :title, :url, :tags
  attr_accessor :description
  include BookmarkHelper

  def initialize(title, url, tags, description)
    @title = title
    @url = url
    @tags = tags
    @description = description
  end

  def self.bookmark_user_input
    bookmark = {}
    INPUTS.each do |input|
      puts "What's the #{input}?"
      print '> '
      bookmark[input] = gets.chomp
    end
    bookmark
  end
end

bookmark = Bookmark.new(
  'Coder Academy',
  'https://coderacademy.com.au',
  %w[code learn],
  'this is a place I want to study at'
)
