class CreatePitches < ActiveRecord::Migration[5.2]
  def change
    create_table :pitches do |t|
      t.string :title
      t.string :logline
      t.string :genre
      t.string :synopsis
      t.string :producer_statement
      t.string :thematic_description
      t.string :visual_style_description
      t.string :filmmaker_bio
      t.integer :user_id

      t.timestamps
    end
  end
end
