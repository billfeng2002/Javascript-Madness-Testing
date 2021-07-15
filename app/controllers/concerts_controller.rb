class ConcertsController < ApplicationController
    def index
        #byebug
        @concerts = Concert.all
        @view_options=[["Default","default"], ["By Popularity", "popularity"], ["By Date", "date"]]
        @views=["default","popularity","date"]
        @mode="default"
        @mode=params[:mode] if @views.include?(params[:mode])
    end

    def show
        
        @concert = Concert.find_by(id: params[:id])
    end
    
    
end
