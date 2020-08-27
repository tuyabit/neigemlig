class CreatePayunits < ActiveRecord::Migration[5.2]
  def change
    create_table :payunits do |t|
      t.text :name
      t.float :f4
      t.decimal :f5
      t.datetime :f6
      t.timestamp :f7
      t.datetime :ff6
      t.timestamp :ff7
      t.time :f8
      t.date :f9
      t.binary :f10
      t.references :mott, foreign_key: true

      t.timestamps
    end
  end
end
