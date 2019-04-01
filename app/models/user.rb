class User < ApplicationRecord
    has_secure_password
    # This needs to be a made up term combining the name of the created and events
    # By seeing that the foreign key is the creator_id 
    # The 'through' table is the Events table / class_name: Event 

    # All of the above information was wrong wrong wrong 
    # Only a foreign key and a has many association is needeed, not even a table. 
    # Had to drop the table and redo, just for brevity 
    has_many :events, foreign_key: :creator_id
end
