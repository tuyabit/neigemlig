class CreateUserjuudjdls < ActiveRecord::Migration[5.2]
  def change
    create_table :userjuudjdls do |t|
      t.string :jname
      t.text :jtxt
      t.text :jyamar
      t.text :jyaah
      t.date :jymrdt
      t.decimal :june
      t.string :junit
      t.string :jrotate
      t.string :yuu
      t.integer :juud
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
