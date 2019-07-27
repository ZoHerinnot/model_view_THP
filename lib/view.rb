require 'gossip'


class View
 
attr_accessor :params
	def create_gossip
      
	    puts "Entrer votre nom"
        @author = gets.chomp
      puts " Hello #{@author} !!"
      
      puts "Ecrit ton message"
        @content = gets.chomp
      
      params = {}      
      return params = {author: @author, content: @content}     
	end

	def index_gossips(gossips)
    i =  0
	  gossips.each do |potins|
	  	if  i != 0
	  	puts "#{i} #{potins.author} ==> #{potins.content }"  	  			  
	    end
	    i += 1
	  end
	end

	def self.delete_potins
		
		#all_gossips = Gossip.all
		puts "🤔 Selectionner le numéro du potins à supprimer"
		delete_num = gets.chomp.to_i
		Gossip.delete_potins(delete_num)
    
	end

end
