class User < ActiveRecord::Base
  has_secure_password
  has_many :items
  has_many :comments

  def self.authenticate(email, password)
    auth = User.find_by(email: email).try(:authenticate, password)
    auth
  end
end
