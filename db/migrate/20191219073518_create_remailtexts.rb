class CreateRemailtexts < ActiveRecord::Migration[5.2]
  def change
    create_table :remailtexts do |t|
      t.text :a1
      t.text :f1
      t.text :f2
      t.text :a2
      t.integer :f3
      t.datetime :f6
      t.timestamp :f7
      t.references :mail, foreign_key: true

      t.timestamps
    end
  end
end
