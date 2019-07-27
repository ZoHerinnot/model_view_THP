require 'gossip'
require 'view'
require 'pry'


class Controller
    
    attr_accessor :view, :params, :gossip 
    def initialize
    	@view = View.new

    end

	def create_gossip
	  
       params = @view.create_gossip
       gossip = Gossip.new(params[:author], params[:content])
       gossip.save
	end

  def index_gossips
  	 all_gossips = Gossip.all
     @view.index_gossips(all_gossips)  	
  end

  def delete_potins
  	all_gossips = Gossip.all
  	@view.index_gossips(all_gossips) 
  	View.delete_potins 	
  	Gossip.delete_potins(all_gossips)
  end
end
