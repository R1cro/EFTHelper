class CreateGuns < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.boolean :foldable
      t.boolean :single_mode
      t.boolean :auto_mode
      t.integer :fire_rate
      t.integer :effective_range

      t.timestamps
    end
  end
end
