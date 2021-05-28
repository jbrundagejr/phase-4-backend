class CreateVinyls < ActiveRecord::Migration[6.1]
  def change
    create_table :vinyls do |t|
      t.string :band_name
      t.string :album_title
      t.string :image_url
      t.integer :year_released
      t.boolean :in_production

      t.timestamps
    end
  end
end
