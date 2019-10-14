class Bullet < ApplicationRecord
  validates_uniqueness_of :name

  belongs_to :caliber
end
