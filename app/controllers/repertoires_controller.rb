class RepertoiresController < ApplicationController
    
    def def index
       
        @repertoires = Repertoire.all
        
    end
    
    
    def show
        @repertoire = Repertoire.find_by(id: params[:id])
    end
    
end
