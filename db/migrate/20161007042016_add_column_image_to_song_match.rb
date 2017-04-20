class AddColumnImageToSongMatch < ActiveRecord::Migration[5.0]
  def change
    add_column :song_matches, :image_src, :string
  end
end
