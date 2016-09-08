class AddColsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :user_id, :integer, null: false
    add_column :notes, :track_id, :integer, null: false
  end
end
