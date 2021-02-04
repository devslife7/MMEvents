class HotelsController < ApplicationController
    before_action :authorized, except: [:index]

    def index
        if params[:location] != nil
            @location = params[:location][:id]
            @hotels = Location.find(params[:location][:id]).hotels
        else
            @location = ""
            @hotels = Hotel.all
        end
    end

    def show
        @hotel = Hotel.find(params[:id])
    end
end
