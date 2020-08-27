class CreatePayimages < ActiveRecord::Migration[5.2]
  def change
    create_table :payimages do |t|
      t.text :name
      t.binary :picture
      t.float :f4
      t.decimal :f5
      t.datetime :f6
      t.timestamp :f7
      t.time :f8
      t.date :f9
      t.binary :f10
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
