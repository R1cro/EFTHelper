class CreateBullets < ActiveRecord::Migration[6.0]
  def change
    create_table :bullets do |t|
      t.integer :caliber_id
      t.integer :gun_id
      t.integer :penetration
      t.integer :damage
      t.integer :armor_damage
      t.float :frag_chance
      t.integer :muzzle_velocity
      t.boolean :tracer
      t.boolean :subsonic

      t.timestamps
    end
  end
end
