class Bookmark
  attr_reader :title, :url, :tags
  attr_accessor :description

  def initialize(title, url, tags, description)
    # this is where we put instance variables that apply to 
    # objects of this class
    @title = title
    @url = url
    @tags = tags
    @description = description
	end
end

bookmark = Bookmark.new(
  "Coder Academy", 
  "https://coderacademy.com.au",
  ["code", "learn"],
  "this is a place I want to study at"
)

p bookmark.title

bookmark.description = "I'm now studying here"



