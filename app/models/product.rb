class Product < ApplicationRecord
has_many :comments
has_many :likes
belongs_to :order, optional: true

end
