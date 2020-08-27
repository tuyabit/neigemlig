class CreateUsershopimgs < ActiveRecord::Migration[5.2]
  def change
    create_table :usershopimgs do |t|
      t.text :name
      t.binary :picture
      t.references :usershop, foreign_key: true

      t.timestamps
    end
  end
end
