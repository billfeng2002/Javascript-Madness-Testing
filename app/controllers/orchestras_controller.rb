class OrchestrasController < ApplicationController
    def index
        @orchestras = Orchestra.all
    end

    def show
        @orchestra = Orchestra.find_by(id: params[:id])
    end
    

end
