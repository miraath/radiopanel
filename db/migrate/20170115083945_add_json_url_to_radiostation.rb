class AddJsonUrlToRadiostation < ActiveRecord::Migration[5.0]
  def change
    add_column :radiostations, :json_url, :string
  end
end
