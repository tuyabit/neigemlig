class CreateMailtexts < ActiveRecord::Migration[5.2]
  def change
    create_table :mailtexts do |t|
      t.text :tt
      t.references :mail, foreign_key: true

      t.timestamps
    end
  end
end
