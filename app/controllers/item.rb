# The purpose of nesting routes is so that you can grab a category id
# and then associate the item to that category. Ex:

# post "/categories/:category/items/" do
#   cat = Category.find_by(params[:category])
#   cat.items.build(params[:item])
# end

# What I'm doing here is finding a category, getting its
# items and adding a new item to that category. This will not
# only create the item but also populate the friegin key


get "/categories/:category_id/items/:id" do
  @item_to_display = Item.find(params[:id])
  if current_user
    erb :"items/show_item"
  else
    erb :login
  end
end


get "/categories/:category_id/items/:id/update" do
  if session[:user].items.include?(Item.find(params[:id]))
    @item_to_edit = Item.find(params[:id])
    erb :"items/edit_item"
  else
    redirect "/categories/#{params[:category_id]}/items/#{params[:id]}"
  end
end

put "/categories/:category_id/items/:id/update" do
  Item.update(params[:id], {:name => params[:name], :description => params[:description], price: params[:price]})
  redirect "/categories/#{params[:category_id]}/items/#{params[:id]}"
end

delete "/categories/:category_id/items/:id" do
  Item.destroy(params[:id])
  redirect "/categories/#{params[:category_id]}"
end
