class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :user_id
      t.string :permissions, default: "private" 
      t.integer :items

      t.timestamps
    end
  end
end
