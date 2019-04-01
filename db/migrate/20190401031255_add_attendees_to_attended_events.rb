class AddAttendeesToAttendedEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :attended_events, :attendee, foreign_key: true
  end
end
