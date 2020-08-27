class CreateUsershopunejahs < ActiveRecord::Migration[5.2]
  def change
    create_table :usershopunejahs do |t|
      t.text :name
      t.integer :count
      t.integer :userid
      t.references :usershopune, foreign_key: true

      t.timestamps
    end
  end
end
