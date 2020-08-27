class CreateMlqdcs < ActiveRecord::Migration[5.2]
  def change
    create_table :mlqdcs do |t|
      t.text :a1
      t.text :f1
      t.text :a2
      t.text :f2
      t.integer :a3
      t.integer :f3
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
