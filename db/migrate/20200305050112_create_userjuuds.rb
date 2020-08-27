class CreateUserjuuds < ActiveRecord::Migration[5.2]
  def change
    create_table :userjuuds do |t|
      t.string :name
      t.text :txt
      t.date :juuddt
      t.string :uname
      t.integer :userid
      t.text :yamar
      t.text :yaah
      t.date :ymrdt
      t.decimal :une
      t.string :unit
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
