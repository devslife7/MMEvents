class SessionsController < ApplicationController
    def home
        @events = Event.all
    end
end