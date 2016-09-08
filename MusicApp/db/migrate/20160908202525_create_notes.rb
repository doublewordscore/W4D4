class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :user, null: false
      t.text :note, null: false

      t.timestamps

      
    end
    add_index :notes, :user
  end
end
