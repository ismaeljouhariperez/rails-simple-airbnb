class AddImageMapUrlToFlats < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :image_map_url, :string
  end
end
