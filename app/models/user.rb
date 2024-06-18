# class User < ApplicationRecord
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable
# end


# # app/models/user.rb

# class User < ApplicationRecord
#   devise :database_authenticatable, :validatable

#   belongs_to :company
# end



# app/models/user.rb

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :validatable
  
  belongs_to :company

  def name
    email.split("@").first.capitalize
  end
end