class EventsController < ApplicationController
    before_action :authorized, except: [:index]

    def index
        if params[:sort] == "date"
            @events = Event.all.sort_by &:date
        elsif params[:sort] == "price"
            @events = Event.all.sort_by &:ticket_cost
        elsif params[:sort] == "alphabet"
            @events = Event.all.sort_by &:name
        else
            @events = Event.all
        end
    end

    def show
        @event = Event.find(params[:id])
    end

    def book_event
        EventUser.create(user_id: session[:user_id], event_id: params[:id])
        HotelUser.create(user_id: session[:user_id], hotel_id: params[:hotel][:id], length_of_stay: params[:length_of_stay])
        redirect_to user_path(session[:user_id])
    end
end
