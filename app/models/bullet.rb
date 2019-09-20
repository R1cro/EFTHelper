class Bullet < ApplicationRecord
  belongs_to :caliber
  has_many :guns

  validates_uniqueness_of :name
end
