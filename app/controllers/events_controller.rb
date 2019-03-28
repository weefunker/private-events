class EventsController < ApplicationController

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        @event = current_user.created_events.build(event_params) if logged_in?
        if @event.save 
            flash[:success] = "Event created!"
            redirect_to current_user
        else 
            render 'new'   
        end      
    end

    def index
        @events = Event.all
    end
    
    

    private 

    def event_params
        params.require(:event).permit(:title, :details)
    end
    
    
    
end
