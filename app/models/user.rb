class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 has_many :products
 has_many :tradings
 has_many :comments
 has_many :likes
 has_many :sns_credentials
 belongs_to :creditcard
 belongs_to :profile
end
