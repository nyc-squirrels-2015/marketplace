get '/categories' do
  @categories = Category.all

  erb :'categories/all'
end

get '/categories/:id' do
  @items = Item.where(category_id: params[:id])

  erb :'categories/show'
end