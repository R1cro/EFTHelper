class Caliber < ApplicationRecord
  has_many :weapons
  has_many :bullets
end
