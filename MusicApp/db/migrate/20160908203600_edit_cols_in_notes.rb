class EditColsInNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :user
    remove_column :notes, :note
    add_column :notes, :body, :text, null: false
  end
end
