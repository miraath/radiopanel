class AddFieldsToRadioStation < ActiveRecord::Migration[5.0]
  def change
    add_column :radiostations, :slug, :string
    add_column :radiostations, :language, :string
  end
end
