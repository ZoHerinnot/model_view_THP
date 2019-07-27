require 'controller'

class Router

#On veut qu'un "Routeur.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
  	@controller = Controller.new

  end

#rappelle_toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on definit donc perform.
    def perform
  	    system "clear" or system "cls"
  	    puts "BIENVENUE DANS THE GOSSIP PROJECT"

	  	while true

		    #on affiche le menu
		    puts "?~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~?"
		    puts "Tu veux faire quoi jeune mouss' ?"
		    puts "0. Vider l'écran"
		    puts "1. Je veux créer un gossip"
		    puts "2. Afficher tous les messages"
		    puts "3. Tu veux supprimer ton message"
		    puts "4. Je veux quitter l'app"
		    print "==>"
		    params = gets.chomp.to_i # on attend le choix de l'utilisateur

		    case params #en fonction du choix
		    when 0
		    	 system "clear" or system "cls"
		    when 1
		    	 puts "Tu as choisi de créer un gossip"
		    	 @controller.create_gossip
		    when 2
		    	puts "Voici tous tes messages:"
		    	 @controller.index_gossips
		    when 3
		    	puts "🤔 Entrer le numero du potin que tu veux supprimer"
		    	 @controller.delete_potins
		    when 4
		    	puts "À bientôt !"
		    	break #ce 'break' permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
		    else
		       puts "Ce choix n'exsiste pas, merci de ressayer"
		        # si l'utilisateur saisit une entrée non prévue, il retourne au debut du "while true".
		        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gaurer jusqu'à la fin des temps:) 
		    end	
	    end
	end
end