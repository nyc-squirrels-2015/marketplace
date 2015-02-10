# There's a lot of repeated code here. It's generally a good idea to extrapolate 
# your data and your seeding logic.

# create a separte file with just model data as JSON, YAML or Ruby hases
# then importhat that file and run the seeding methods. The external model
# data would look like this:

# # users.rb
# ```
# [
#   {name: "Ivan", email: "something"}, 
#   {name: "Rayan", email: "somethingelse"}
# ]
# ```

# Then, in this file (seeds.rb) import that file and iterate oer it to seed the db 

# users = File.read('users.rb')
# users.each do {|user| User.create(user)}

User.create(name: :Ivan,email: "ivan@gmail.com", password: "123", password_confirmation: "123", photo_url: "http://upload.wikimedia.org/wikipedia/commons/7/7b/Donkey_1_arp_750px.jpg")
User.create(name: :Rayan,email: "rayan@gmail.com", password: "123", password_confirmation: "123", photo_url: "http://images.nationalgeographic.com/wpf/media-live/photos/000/005/cache/grey-wolf_565_600x450.jpg")
User.create(name: :James,email: "james@gmail.com", password: "123", password_confirmation: "123")
User.create(name: :Lucas,email: "lucas@gmail.com", password: "123", password_confirmation: "123")

Category.create(name: :Furniture)
Category.create(name: :Pets)
Category.create(name: :Gadgets)
Category.create(name: :Housing)

Item.create(name: :Bed, description: "Very comfy", price: "Free", user_id: 1, category_id: 1)
Item.create(name: :Cat, description: "Very comfy", price: "Free", user_id: 1, category_id: 2)
Item.create(name: :Salsa, description: "Has fur", price: "Free", user_id: 2, category_id: 2)
Item.create(name: :MacBook, description: "Very power", price: "99999", user_id: 3, category_id: 3)
Item.create(name: :Room, description: "Very roomy", price: "A million dollars", user_id: 4, category_id: 4)

Comment.create(content: "This bed has bedbugs", user_id: 3, item_id: 1)
Comment.create(content: "aeufhau ", user_id: 3, item_id: 1)
Comment.create(content: "arrgara", user_id: 3, item_id: 1)
Comment.create(content: "Thiargargugs", user_id: 3, item_id: 1)
Comment.create(content: "This beargarg bedbugs", user_id: 3, item_id: 1)
Comment.create(content: "This argargbedbugs", user_id: 3, item_id: 1)
Comment.create(content: "This bedarghas bedbugs", user_id: 3, item_id: 1)
Comment.create(content: "This argarga has bedbugs", user_id: 3, item_id: 1)
Comment.create(content: "This bed has argargaga", user_id: 3, item_id: 1)
