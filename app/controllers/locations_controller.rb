class LocationsController < ApplicationController
    before_action :authorized, except: [:index]
    
    def index
        @locations = Location.all
    end
    
    def show
        @location = Location.find(params[:id])
    end
end
