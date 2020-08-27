class CreateMlqdas < ActiveRecord::Migration[5.2]
  def change
    create_table :mlqdas do |t|
      t.text :a1
      t.text :f1
      t.text :a2
      t.text :f2
      t.integer :a3
      t.integer :f3
      t.float :a4
      t.float :f4
      t.decimal :a5
      t.decimal :f5
      # t.datetame :a6
      # t.datetime :f6
      # t.timestamp :a7
      # t.timestamp :f7
      t.time :a8
      t.time :f8
      t.date :a9
      t.date :f9
      t.binary :a10
      t.binary :f10
      t.boolean :a11
      t.boolean :f11
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
