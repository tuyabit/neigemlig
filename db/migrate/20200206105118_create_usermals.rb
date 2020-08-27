class CreateUsermals < ActiveRecord::Migration[5.2]
  def change
    create_table :usermals do |t|
      t.string :name1
      t.text :name2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
