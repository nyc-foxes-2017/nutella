class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content, null: false
      t.integer :author_id, null: false
      t.integer :recipient_id, null: false

      t.timestamps(null: false)
    end

    add_foreign_key(:posts, :users, column: :author_id)
    add_foreign_key(:posts, :users, column: :recipient_id)
  end
end
