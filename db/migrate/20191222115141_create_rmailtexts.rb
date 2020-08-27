class CreateRmailtexts < ActiveRecord::Migration[5.2]
  def change
    create_table :rmailtexts do |t|
      t.text :tt
      t.references :rmail, foreign_key: true

      t.timestamps
    end
  end
end
