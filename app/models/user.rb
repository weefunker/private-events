class User < ApplicationRecord
    has_secure_password
    # This needs to be a made up term combining the name of the created and events
    # By seeing that the foreign key is the creator_id 
    # The 'through' table is the Events table / class_name: Event 
    has_many :created_events, foreign_key: "creator_id", class_name: "Event"
end
