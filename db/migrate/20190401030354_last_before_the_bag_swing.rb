class LastBeforeTheBagSwing < ActiveRecord::Migration[5.2]
  def change
    remove_column :attended_events, :attendee_id
  end
end
