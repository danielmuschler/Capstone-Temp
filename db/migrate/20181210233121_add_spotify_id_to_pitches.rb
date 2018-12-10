class AddSpotifyIdToPitches < ActiveRecord::Migration[5.2]
  def change
    add_column :pitches, :SpotifyID, :string
  end
end
