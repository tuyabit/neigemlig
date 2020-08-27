class CreateUsergers < ActiveRecord::Migration[5.2]
  def change
    create_table :usergers do |t|
      t.text :name
      t.text :faymly
      t.integer :hed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
