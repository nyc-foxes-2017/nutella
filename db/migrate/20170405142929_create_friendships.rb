class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.integer :frienda_id
      t.integer :friendb_id
      t.boolean :pending
      t.timestamps(null: false)
    end

    add_foreign_key(:friendships, :users, column: :frienda_id)
    add_foreign_key(:friendships, :users, column: :friendb_id)
  end
end
