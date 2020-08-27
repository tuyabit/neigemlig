class CreateMalhens < ActiveRecord::Migration[5.2]
  def change
    create_table :malhens do |t|
      t.string :name1
      t.text :name2
      t.integer :count
      t.datetime :countdt
      t.references :malcount, foreign_key: true

      t.timestamps
    end
  end
end
