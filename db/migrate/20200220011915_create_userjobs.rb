class CreateUserjobs < ActiveRecord::Migration[5.2]
  def change
    create_table :userjobs do |t|
      t.string :name
      t.text :job
      t.text :from
      t.text :skil
      t.binary :picture
      t.float :f4
      t.decimal :f5
      t.string :unit
      t.integer :daynum
      t.datetime :f6
      t.timestamp :f7
      t.datetime :ff6
      t.timestamp :ff7
      t.time :f8
      t.date :f9
      t.time :ff8
      t.date :ff9
      t.integer :f10
      t.text :other
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
