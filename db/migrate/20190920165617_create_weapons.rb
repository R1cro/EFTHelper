class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.references :gun, null: false, foreign_key: true

      t.timestamps
    end
  end
end
