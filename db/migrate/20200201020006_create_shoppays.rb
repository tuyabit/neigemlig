class CreateShoppays < ActiveRecord::Migration[5.2]
  def change
    create_table :shoppays do |t|
      t.integer :fromuserid
      t.string :fromusername
      t.integer :touserid
      t.string :tousername
      t.text :name
      t.string :unit
      t.binary :picture
      t.float :f4, precision: 10, scale: 3
      t.decimal :f5, precision: 10, scale: 3
      t.datetime :f6
      t.timestamp :f7
      t.time :f8
      t.date :f9
      t.binary :f10
      t.text :memo1
      t.text :memo2
      t.decimal :f11, precision: 10, scale: 3

      t.timestamp :f12

      t.timestamps
    end
  end
end
