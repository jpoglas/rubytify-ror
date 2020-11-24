class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.belongs_to :artist, foreign_key: true
      t.string :name
      t.string :image
      t.string :spotify_url
      t.integer :total_tracks
      t.string :spotify_id

      t.timestamps
    end
  end
end
