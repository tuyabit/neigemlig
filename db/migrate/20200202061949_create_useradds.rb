class CreateUseradds < ActiveRecord::Migration[5.2]
  def change
    create_table :useradds do |t|
      t.string :name
      t.string :tel
      t.string :pcode
      t.text :add
      t.string :ulus
      t.string :hot
      t.string :jeel
      t.string :gdumj
      t.string :uud
      t.binary :picture
      t.datetime :f6
      t.timestamp :f7
      t.binary :f10
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
