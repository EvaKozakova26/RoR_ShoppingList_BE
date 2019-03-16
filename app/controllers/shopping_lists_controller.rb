class ShoppingListsController < ApplicationController
  protect_from_forgery with: :null_session
  wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]

  def getLists
    shoppingLists = ShoppingList.all
    respond_to do |format|
      format.any { render json: shoppingLists, content_type: 'application/json' }
    end
  end

  def saveList
    items = params[:_json]
    shopping_list = ShoppingList.create
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