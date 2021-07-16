class RepertoiresController < ApplicationController
    
    def index
       
        @repertoires = Repertoire.all
        
    end
    
    
    def show
        @repertoire = Repertoire.find_by(id: params[:id])
    end
    
end
