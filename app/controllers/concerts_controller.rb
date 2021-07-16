class ConcertsController < ApplicationController
    def index
        #byebug
        @query_options=[ ["By Date (dec)", "date_dec"], ["By Date (asc)", "date_asc"], ["By Popularity", "popularity"], ["By Price (inc)", "price_asc"], ["By Price (dec)", "price_dec"], ["Most Recent", "recent"]]
        queries=@query_options.map{|option| option[1]}
        @mode="date_dec"
        @mode=params[:mode] if queries.include?(params[:mode])

        @display_options=[ ["Past Concerts", "past"], ["Upcoming Concerts", "future"], ["All Concerts", "all"]]
        displays=@display_options.map{|option| option[1]}
        @displayed="all"
        @displayed=params[:view] if displays.include?(params[:view])

        @user=current_user

        @title=@display_options.find{|option| option[1]==@displayed}[0]+" "
        case @mode
        when "popularity"
            @title+="Concerts Sorted by Popularity"
            @concerts=Concert.sorted_by_popularity(@displayed)
        when "date_dec"
            @title+="Concerts Sorted by Date (Descending)"
            @concerts=Concert.sorted_by_date_dec(@displayed)
        when "date_asc"
            @title+="Concerts Sorted by Date (Ascending)"
            @concerts=Concert.sorted_by_date_dec(@displayed)
        when "recent"
            @title+="Concerts Sorted by Recency"
            @concerts=Concert.sorted_by_recent(@displayed)
        when "price_asc"
            @title+="Concerts Sorted by Price (Lowest First)"
            @concerts=Concert.sorted_by_price_asc(@displayed)
        when "price_dec"
            @title+="Concerts Sorted by Price (Highest First)"
            @concerts=Concert.sorted_by_price_dec(@displayed)
        else
            @title = "All Concerts"    
            @concerts=Concert.all
        end
        
    end

    def show
        @concert = Concert.find_by(id: params[:id])
    end
    
    
end
