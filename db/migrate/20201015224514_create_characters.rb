class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :full_name
      t.timestamps
    end
    add_index :characters, :name, unique: true
  end
end
