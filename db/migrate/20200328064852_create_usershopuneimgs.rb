class CreateUsershopuneimgs < ActiveRecord::Migration[5.2]
  def change
    create_table :usershopuneimgs do |t|
      t.text :name
      t.binary :picture
      t.references :usershopune, foreign_key: true

      t.timestamps
    end
  end
end
