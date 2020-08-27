class AddColumnToMottimage < ActiveRecord::Migration[5.2]
  def change
    add_column :mottimages, :tta, :text
    add_column :mottimages, :ttb, :text
    add_column :mottimages, :timage, :text
    add_column :mottimages, :tvideo, :text
    add_column :mottimages, :taudio, :text
    add_column :mottimages, :rotate, :string
    add_column :mottimages, :aimage, :integer
    add_column :mottimages, :avideo, :integer
    add_column :mottimages, :aaudio, :integer
    add_column :mottimages, :picrotate, :string
  end
end
