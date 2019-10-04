class Weapon < ApplicationRecord
  belongs_to :caliber
  belongs_to :firearm
  has_many :bullets, through: :caliber
end
