class Item < ApplicationRecord
  belongs_to :shopping_list, required: false
end
