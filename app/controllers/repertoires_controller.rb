class RepertoiresController < ApplicationController
    def show
        @repertoire = Repertoire.find_by(id: params[:id])
    end
    
end
