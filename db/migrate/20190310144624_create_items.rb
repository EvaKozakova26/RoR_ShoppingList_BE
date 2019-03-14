class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.datetime :created_at
      t.integer :count
      t.boolean :state
      t.references :shopping_list

      t.timestamps
    end
  end
end
