require_relative "lib/views/index.rb'

def perform
  menu = Menu.new
  menu.affichage
  menu.ask_choice
end

perform
