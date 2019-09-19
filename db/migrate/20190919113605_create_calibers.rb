class CreateCalibers < ActiveRecord::Migration[6.0]
  def change
    create_table :calibers do |t|
      t.string :name
      t.integer :gun_id
      t.integer :bullet_id

      t.timestamps
    end
  end
end
