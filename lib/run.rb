require 'terminal-table'
require 'tty-prompt'
require_relative 'menu'
require_relative 'bookmark_helper'
require_relative 'bookmark'
require_relative 'bookmark-repository'

app = Menu.new
app.router
