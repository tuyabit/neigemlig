class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|
      t.text :f1
      t.text :f2
      t.text :a1
      t.text :a2
      t.integer :f3
      t.float :f4
      t.decimal :f5
      t.datetime :f6
      t.timestamp :f7
      t.time :f8
      t.date :f9
      t.binary :f10
      t.boolean :f11

      t.timestamps
    end
  end
end
