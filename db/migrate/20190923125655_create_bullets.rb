class CreateBullets < ActiveRecord::Migration[6.0]
  def change
    create_table :bullets do |t|
      t.string :name
      t.text :description
      t.integer :penetration
      t.integer :damage
      t.integer :armor_damage
      t.integer :ricochet_chance
      t.integer :frag_chance
      t.integer :muzzle_velocity
      t.boolean :tracer
      t.boolean :subsonic

      t.timestamps
    end
  end
end
