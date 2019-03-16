Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  get '/api/getLists' => 'shopping_lists#getLists'
  post '/api/newItem' => 'items#newItem'
  post '/api/saveList' => 'shopping_lists#saveList'
  post '/api/getItems' => 'items#getItems'
  delete '/api/deleteItem' => 'items#deleteItem'
  delete '/api/deleteList' => 'shopping_lists#deleteList'
  put '/api/checkItem' => 'items#checkItem'
  post '/api/updateList' => 'shopping_lists#updateList'


end
