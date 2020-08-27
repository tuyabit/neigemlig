class CreateMottpictxts < ActiveRecord::Migration[5.2]
  def change
    create_table :mottpictxts do |t|
      t.text :picga
      t.text :picba
      t.text :picda
      t.references :mottimage, foreign_key: true

      t.timestamps
    end
  end
end
