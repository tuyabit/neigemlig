class CreateMottvidtxts < ActiveRecord::Migration[5.2]
  def change
    create_table :mottvidtxts do |t|
      t.text :ga
      t.text :ba
      t.text :da
      t.references :mottimage, foreign_key: true

      t.timestamps
    end
  end
end
