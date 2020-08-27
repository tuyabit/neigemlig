class CreateMottimages < ActiveRecord::Migration[5.2]
  def change
    create_table :mottimages do |t|
      t.text :name
      t.binary :picture
      t.references :mott, foreign_key: true

      t.timestamps
    end
  end
end
