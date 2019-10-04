class Bullet < ApplicationRecord
  validates_uniqueness_of :name

  has_one :caliber
end
