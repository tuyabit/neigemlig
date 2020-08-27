class CreateUserjuudjdlimgs < ActiveRecord::Migration[5.2]
  def change
    create_table :userjuudjdlimgs do |t|
      t.string :name
      t.binary :picture
      t.references :userjuudjdl, foreign_key: true

      t.timestamps
    end
  end
end
