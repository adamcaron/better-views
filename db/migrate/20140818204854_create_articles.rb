class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.integer :author_id
      t.boolean :current

      t.timestamps
    end
  end
end
