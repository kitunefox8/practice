class Status < ApplicationRecord
 has_many :products
 has_one :shipping
end
