class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :name
      t.string :artist
      t.string :description
      t.integer :pitch_id

      t.timestamps
    end
  end
end
