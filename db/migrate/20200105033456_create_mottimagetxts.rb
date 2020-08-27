class CreateMottimagetxts < ActiveRecord::Migration[5.2]
  def change
    create_table :mottimagetxts do |t|
      t.text :picga
      t.text :picba
      t.text :picda
      t.text :viddga
      t.text :vidba
      t.text :vidda
      t.text :adiddga
      t.text :adiba
      t.text :adida
      t.references :mottimage, foreign_key: true

      t.timestamps
    end
  end
end
