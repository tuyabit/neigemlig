class CreateMlqdfs < ActiveRecord::Migration[5.2]
  def change
    create_table :mlqdfs do |t|
      t.text :a1
      t.boolean :f1
      t.text :a2
      t.boolean :f2
      t.integer :a3
      t.boolean :f3
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
