class Grandchild < ApplicationRecord
  belongs_to :category
  belongs_to :child
end
