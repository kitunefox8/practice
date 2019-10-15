class Product < ApplicationRecord
has_many :comments
has_many :likes
belongs_to :order, optional: true
belongs_to :category, optional: true
accepts_nested_attributes_for :category
end
