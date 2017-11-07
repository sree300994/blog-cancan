class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.date :published_date
      t.integer :user_id
      t.boolean :allow_comments, default: true

      t.timestamps null: false
    end
  end
end
