class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :events, :creators, column: :creator_id
  end
end
