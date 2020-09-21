class Bookmark
  attr_reader :title, :url, :tags, :id
  attr_accessor :description
  include BookmarkHelper

  def initialize(id, title, url, tags, description)
    @id = id
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
