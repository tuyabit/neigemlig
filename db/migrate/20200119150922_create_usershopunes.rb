class CreateUsershopunes < ActiveRecord::Migration[5.2]
  def change
    create_table :usershopunes do |t|
      t.text :name
      t.integer :une1
      t.float :une2
      t.decimal :une3, precision: 10, scale: 3
      t.date :dune
      t.references :usershop, foreign_key: true

      t.timestamps
    end
  end
end
