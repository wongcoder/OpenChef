#Model defines the nature of our records

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #these declarations give special abilities to users
  #they can register, login, recover password, remember ID,
  #see if they are logged in/out, and check if data is valid
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable
end
