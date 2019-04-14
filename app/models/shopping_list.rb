class ShoppingList < ApplicationRecord
  belongs_to :user, required: false

  def self.create_list(current_user)
    shop_list = ShoppingList.create(user_id:current_user.id)
    return shop_list
  end

end
