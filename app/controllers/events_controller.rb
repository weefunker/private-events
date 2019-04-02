class EventsController < ApplicationController

    def show
        @event = Event.find(params[:id]).order(created_at: :desc)
    end

    def new
        @event = Event.new
    end

    def create
        @event = current_user.events.build(event_params) if logged_in?
        if @event.save 
            flash[:success] = "Event created!"
            redirect_to current_user
        else 
            render 'new'   
        end      
    end

    def index 
        @events = Event.all.order(created_at: :desc)
        @past_events = Event.where("date < ? ", Time.now)
        @future_events = Event.where("date > ? ", Time.now)
    end
    
    
    

    private 

    def event_params
        params.require(:event).permit(:title, :details)
    end
    
    
    
end
