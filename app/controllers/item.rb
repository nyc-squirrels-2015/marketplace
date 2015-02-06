get "/categories/:category_id/items/new" do
  erb :"items/new_item"
end

post "/categories/:category_id/items/new" do
  p params
  Item.create(name: params[:name], description: params[:description], price: params[:price], photo_url: params[:photo_url], category_id: params[:category_id])
  redirect "/categories/#{params[:category_id]}"
end

