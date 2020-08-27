class CreateUserjobpjhuns < ActiveRecord::Migration[5.2]
  def change
    create_table :userjobpjhuns do |t|
      t.text :hname
      t.text :hfrom
      t.integer :hcount
      t.decimal :hune
      t.string :hunit
      t.date :hstartdate
      t.date :henddate
      t.references :userjobpj, foreign_key: true

      t.timestamps
    end
  end
end
