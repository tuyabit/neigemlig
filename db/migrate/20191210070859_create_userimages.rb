class CreateUserimages < ActiveRecord::Migration[5.2]
  def change
    create_table :userimages do |t|
      t.text :name
      t.binary :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
