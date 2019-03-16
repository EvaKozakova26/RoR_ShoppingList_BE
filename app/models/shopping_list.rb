class ShoppingList < ApplicationRecord
  belongs_to :user, required: false
end
