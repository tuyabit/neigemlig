class CreateUserjobpjhunjahs < ActiveRecord::Migration[5.2]
  def change
    create_table :userjobpjhunjahs do |t|
      t.text :jname
      t.text :jfrom
      t.decimal :june
      t.string :junit
      t.date :jstartdate
      t.date :jenddate
      t.integer :userid
      t.string :uname
      t.datetime :jahdt
      t.datetime :mddt
      t.datetime :get1dt
      t.references :userjobpjhun, foreign_key: true

      t.timestamps
    end
  end
end
