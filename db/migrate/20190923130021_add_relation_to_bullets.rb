class AddRelationToBullets < ActiveRecord::Migration[6.0]
  def change
    add_reference :bullets, :caliber, null: false, foreign_key: true
  end
end
