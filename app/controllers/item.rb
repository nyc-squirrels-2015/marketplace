get "/categories/:category_id/items/:id" do
  @item_to_display = Item.find(params[:id])

  erb :"items/show_item"
end

get "/categories/:category_id/items/new" do
  erb :"items/new_item"
end

post "/categories/:category_id/items/new" do
  p params
  Item.create(name: params[:name], description: params[:description], price: params[:price], photo_url: params[:photo_url], category_id: params[:category_id])
  redirect "/categories/#{params[:category_id]}"
end

get "/categories/:category_id/items/:id/update" do
  @item_to_edit = Item.find(params[:id])
  erb :"items/edit_item"
end

put "/categories/:category_id/items/:id/update" do
  Item.update(params[:id], {:name => params[:name], :description => params[:description], price: params[:price]})
end