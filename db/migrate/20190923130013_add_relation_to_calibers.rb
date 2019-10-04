class AddRelationToCalibers < ActiveRecord::Migration[6.0]
  def change
    add_reference :calibers, :bullet, null: true, foreign_key: true
    add_reference :calibers, :weapon, null: true, foreign_key: true
  end
end
