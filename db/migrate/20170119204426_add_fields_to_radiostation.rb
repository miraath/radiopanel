class AddFieldsToRadiostation < ActiveRecord::Migration[5.0]
  def change
    add_column :radiostations, :weigth, :integer
  end
end
