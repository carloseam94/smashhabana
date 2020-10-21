class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.references :user, null: false
      t.string :title
      t.string :seo_id
      t.text :summary
      t.text :data
      t.string :status
      t.string :is_pinned
      t.text :description
      t.string :category
      t.integer :likes, null: false, default: 0
      t.timestamps
    end
    add_index :articles, :seo_id,                unique: true
  end
end
