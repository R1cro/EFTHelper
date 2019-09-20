class Bullet < ApplicationRecord
  belongs_to :caliber
  belongs_to :gun
end
