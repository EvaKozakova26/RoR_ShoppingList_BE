class CreateShoppingLists < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_lists do |t|

      t.timestamps
    end
    add_reference :items, :shopping_list
  end
end
