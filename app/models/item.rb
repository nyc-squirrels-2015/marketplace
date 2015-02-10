# Y U NO VALIDATIONS!!

class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :comments
end
