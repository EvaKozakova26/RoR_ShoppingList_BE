class ShoppingListsController < ApplicationController
  skip_forgery_protection
  wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]

  def getLists
    shoppingLists = ShoppingList.where(user_id: current_user.id)
    puts current_user
    user = current_user
    puts user
    respond_to do |format|
      format.any { render json: shoppingLists, content_type: 'application/json' }
    end
  end

  def saveList
    items = params[:_json]
    shopping_list = ShoppingList.create(user_id:current_user.id)
    items.each do |item|
      Item.update(item[:id], shopping_list_id: shopping_list[:id])
    end
    respond_to do |format|
      format.any { render json: shopping_list, content_type: 'application/json' }
    end
  end

  def deleteList
    s_list = ShoppingList.delete(params[:id])
    respond_to do |format|
      format.any { render json: s_list, content_type: 'application/json' }
    end
  end

  def updateList
    s_list = params[:shoppingList]
    items = params[:items]
    items.each do |item|
      Item.update(item[:id], shopping_list_id: s_list[:id])
    end
    respond_to do |format|
      format.any { render json: s_list, content_type: 'application/json' }
    end
  end

end