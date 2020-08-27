class CreateUsergets < ActiveRecord::Migration[5.2]
  def change
    create_table :usergets do |t|
      t.text :name
      t.text :txt
      t.string :yuu
      t.integer :has
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
