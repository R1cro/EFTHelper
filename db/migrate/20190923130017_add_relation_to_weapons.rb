class AddRelationToWeapons < ActiveRecord::Migration[6.0]
  def change
    add_reference :weapons, :caliber, null: false, foreign_key: true
    add_reference :weapons, :firearm, { null: false, foreign_key: true }
  end
end
