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
  end while choice < 1 || choice > 2
  if choice == 1
    puts "Envoi des emails"
  elsif choice == 2
    puts "Following"
    end

  end


end

menu = Menu.new
menu.affichage
menu.ask_choice
