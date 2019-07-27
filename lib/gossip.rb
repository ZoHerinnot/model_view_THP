#require 'pry'
require 'csv'
require 'pry'

class Gossip # classe des potins ie des petits mots bavardages
 
 attr_reader :author, :content # 2variabes l'auteur et le message de l'auteur

	def initialize(author,content)
		@content = content
		@author = author
	end

	def save #sauvegarde les données dans csv		
		CSV.open("db/gossip.csv","a+") do |csv|		
				   csv << [@author, @content]	
		end		
	end

	def self.all
    
		all_gossips = []
		CSV.open("db/gossip.csv","r") do |csv| 					   	
			csv.each do |ligne|
				gossip_provisoire = Gossip.new(ligne[0], ligne[1])
				all_gossips << gossip_provisoire
			end
		end		
		return all_gossips
	end
  
  def self.delete_potins(delete_num)  

  	 table_csv = CSV.read("db/gossip.csv")
  	 table_csv.delete_at(delete_num)

     puts "vous avez supprimé #{table_csv.delete_at(delete_num)}"
  	 CSV.open("db/gossip.csv","w") do |csv|	
  	     	table_csv.each do |value|
				   csv << value
				 end
		 end		
  end
end



=begin
	
rescue Exception => e
	
end
table_csv = CSV.read("../db/gossip.csv")
puts table_csv
puts "nombre de ton choix"
num = gets.chomp.to_i

table_csv.delete_at(num)

puts table_csv
=end

