require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "should save item " do
    item = Item.new(name: "myItem", state: false, count: 1)
    assert item.save
  end
end
