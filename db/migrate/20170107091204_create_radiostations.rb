class CreateRadiostations < ActiveRecord::Migration[5.0]
  def change
    create_table :radiostations do |t|
      t.string :streaming_url
      t.string :name
      t.string :logo
      t.string :description
      t.boolean :active
      t.boolean :online

      t.timestamps
    end
  end
end
