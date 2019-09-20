class CreateBullets < ActiveRecord::Migration[6.0]
  def change
    create_table :bullets do |t|
      t.string :name
      t.text :description
      t.references :caliber, null: false, foreign_key: true
      t.integer :gun, null: true, foreign_key: true
      t.integer :penetration
      t.integer :damage
      t.integer :armor_damage
      t.integer :frag_chance
      t.integer :muzzle_velocity
      t.boolean :tracer
      t.boolean :subsonic

      t.timestamps
    end
  end
end
