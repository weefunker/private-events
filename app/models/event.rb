class Event < ApplicationRecord
    # It belongs to user
    # However it must go 'through' the creator table.
    # Worth noting that the foreign key was added manually using a migration 
    belongs_to :creator, class_name: "User"
end
