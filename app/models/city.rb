class City < ApplicationRecord
  belongs_to :prefecture
  has_many :towns
end
