class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :item
      t.boolean :completed
      t.integer :list_id

      t.timestamps
    end
  end
end
