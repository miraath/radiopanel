class AddCountryToRadiostation < ActiveRecord::Migration[5.0]
  def change
    add_column :radiostations, :country, :string
  end
end
