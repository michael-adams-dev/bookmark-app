require 'json'
require_relative 'bookmark_helper'

class BookmarkRepository
  attr_reader :bookmarks
  include BookmarkHelper
  def initialize
    @bookmarks = read_bookmarks
  end

  def read_bookmarks
    data = File.read(BOOKMARKS_DB)
    JSON.parse(data).map do |bookmark|
      Bookmark.new(
        bookmark['id'],
        bookmark['title'],
        bookmark['url'],
        bookmark['tags'],
        bookmark['description']
      )
    end
  end

  def write_bookmarks
    data = @bookmarks.map do |bookmark|
      {
        id: bookmark.id,
        title: bookmark.title,
        url: bookmark.url,
        tags: bookmark.tags, 
        description: bookmark.description
    }
    end
    File.write(BOOKMARKS_DB, JSON.pretty_generate(data))
  end

  def create_bookmark
    bookmark = Bookmark.bookmark_user_input
    @bookmarks << Bookmark.new(
      @bookmarks.length + 1,
      bookmark[:title],
      bookmark[:url],
      handle_tags(bookmark[:tags]),
      bookmark[:description]
    )
  end

  def handle_tags(tags)
    tags.split(",")
  end
end