class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.integer :pitch_id

      t.timestamps
    end
  end
end
