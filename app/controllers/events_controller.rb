class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
    end

    def book_event
        EventUser.create(user_id: 1, event_id: params[:id])
        redirect_to user_path(1)
        #refactor user_id once login is fixed
    end
end
