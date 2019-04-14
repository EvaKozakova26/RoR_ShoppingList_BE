class ItemsController < ApplicationController
  skip_forgery_protection
  caches_action :getItems

  def newItem
    createdAt = DateTime.now
    updatedAt = DateTime.now
    itemNew = Item.create(name: params[:name], count: params[:count], state: params[:state], created_at: createdAt, updated_at: updatedAt)
    respond_to do |format|
      format.any { render json: itemNew, content_type: 'application/json' }
    end
  end

  def getItems
    list_id = params[:id]
    items = Item.where(shopping_list_id: list_id)
    puts items
    respond_to do |format|
      format.any { render json: items, content_type: 'application/json' }
    end
  end

  def deleteItem
    item = Item.delete(params[:id])
    respond_to do |format|
      format.any { render json: item, content_type: 'application/json' }
    end
  end

  def checkItem
    item = Item.update(params[:id], state: params[:state])
    respond_to do |format|
      format.any { render json: item, content_type: 'application/json' }
    end
  end

end