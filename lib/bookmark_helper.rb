module BookmarkHelper
  INPUTS = %i[title url tags description].freeze
  HEADINGS = %i[id title url tags description].freeze
  BOOKMARKS_DB = Dir.pwd + "/public/bookmarks.json"
end
