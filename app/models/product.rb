class Product < ApplicationRecord
has_many :comments
has_many :likes
belongs_to :order, optional: true
belongs_to :category
belongs_to :status
accepts_nested_attributes_for :category
accepts_nested_attributes_for :status
end
