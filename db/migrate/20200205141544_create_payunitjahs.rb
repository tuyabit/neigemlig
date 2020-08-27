class CreatePayunitjahs < ActiveRecord::Migration[5.2]
  def change
    create_table :payunitjahs do |t|
      t.string :jname
      t.float :jf4
      t.decimal :jf5
      t.datetime :jf6
      t.timestamp :jf7
      t.datetime :jff6
      t.timestamp :jff7
      t.time :f8
      t.date :f9
      t.integer :f10
      t.integer :count
      t.integer :userid
      t.string :uname
      t.references :payunit, foreign_key: true

      t.timestamps
    end
  end
end
