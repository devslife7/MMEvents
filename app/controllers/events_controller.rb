class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
    end

    def book_event
        EventUser.create(user_id: session[:user_id], event_id: params[:id])
        redirect_to hotels_path
        # need to narrow hotels by city
        # redirect_to user_path(session[:user_id])
    end
end
