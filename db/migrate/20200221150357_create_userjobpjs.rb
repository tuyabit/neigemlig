class CreateUserjobpjs < ActiveRecord::Migration[5.2]
  def change
    create_table :userjobpjs do |t|
      t.text :name
      t.text :from
      t.integer :count
      t.decimal :une
      t.string :unit
      t.date :startdate
      t.date :enddate
      t.references :userjob, foreign_key: true

      t.timestamps
    end
  end
end
