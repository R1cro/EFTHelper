class CreateGuns < ActiveRecord::Migration[6.0]
  def change
    create_table :guns do |t|
      t.string :name
      t.integer :caliber_id
      t.boolean :foldable
      t.string :fire_mod
      t.integer :fire_rate
      t.integer :effective_range

      t.timestamps
    end
  end
end
