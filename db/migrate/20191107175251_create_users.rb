class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :email
      t.string :password_digest
      t.string :image
      t.text :introduce
      t.integer :age
      t.string :sex
      t.text :address

      t.timestamps
    end
  end
end
