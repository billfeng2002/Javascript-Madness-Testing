class ConcertsController < ApplicationController
    def index
        #byebug
        @view_options=[ ["By Date", "date"], ["Past Concerts", "past"], ["Upcoming Concerts", "future"], ["By Popularity", "popularity"], ["Most Recent", "recent"]]
        views=["default","popularity","date", "recent", "past", "future"]
        @mode="date"
        @mode=params[:mode] if views.include?(params[:mode])
        @data=[]
        case @mode
        when "popularity"
            @title="Concerts Sorted by Popularity"
            @concerts=Concert.sorted_by_popularity
        when "date"
            @title="Concerts Sorted by Date"
            @concerts=Concert.sorted_by_date
        when "recent"
            @title="Concerts Sorted by Recency"
            @concerts=Concert.sorted_by_recent
        when "past"
            @title="Past Concerts"
            @concerts=Concert.past_concerts
        when "future"
            @title ="Upcoming Concerts"
            @concerts=Concert.future_concerts
        else
            @title = "All Concerts"    
            @concerts=Concert.all
        end
        
    end

    def show
        @concert = Concert.find_by(id: params[:id])
    end
    
    
end
