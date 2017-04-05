class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :user, null: false
      t.integer :likeable_id, null: false
      t.string :likeable_type, null: false
      t.timestamps(null: false)
    end
  end
end
