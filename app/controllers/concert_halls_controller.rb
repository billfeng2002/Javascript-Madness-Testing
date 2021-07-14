class ConcertHallsController < ApplicationController
    
    def index
        @concert_halls = ConcertHall.all
    end
    
    def show
        @concert_hall = ConcertHall.find_by(id: params[:id])
    end
    
end
