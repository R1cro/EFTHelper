class CreateCalibers < ActiveRecord::Migration[6.0]
  def change
    create_table :calibers do |t|
      t.string :name

      t.timestamps
    end
  end
end
