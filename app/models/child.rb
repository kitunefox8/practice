class Child < ApplicationRecord
belongs_to :category
has_many :grandchild
end
