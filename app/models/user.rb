class User < ApplicationRecord
    has_secure_password
    has_many :events, foreign_key: :creator_id
    has_many :attended_events, foreign_key: :attendee_id

    def upcoming_events
        self.events.where("date > ? ", Time.now)
    end
    
    def previous_events
        self.events.where("date < ? ", Time.now)
    end

end
