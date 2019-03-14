class ShoppingListsController < ApplicationController
  def getLists
    puts "jsem v controlleru"

    shoppingLists = ShoppingList.all

    respond_to do |format|
      format.any { render json: shoppingLists, content_type: 'application/json' }
    end
  end
end