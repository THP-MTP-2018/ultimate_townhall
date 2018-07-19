require_relative 'done.rb'


class Menu
  def initialize
    @ligne1 = "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    @ligne2 = "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  end

  def affichage
    puts @ligne1
    puts "Entrez 1 pour envoyer des mails et Entrez 2 pour follow les mairies."
    puts @ligne2
  end

  def ask_choice
    begin
      print "> "
      choice = gets.chomp.to_i
    end while choice < 1 || choice > 3

    if choice == 1
      puts "Envoi des emails"
      # perform

    elsif choice == 2
      puts "Following"
      perform_2

    elsif choice == 3
      puts "Create JSON Files"
      perform_3
    end
  end
end

menu = Menu.new
menu.affichage
menu.ask_choice
