class Gun < ApplicationRecord
  belongs_to :caliber
  has_many :bullets
end
