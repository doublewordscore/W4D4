class RemoveIndexOnBandId < ActiveRecord::Migration
  def change
    remove_index :albums, :band_id
    add_index :albums, :band_id
  end

end
