class AddAttachmentLogoToRadiostations < ActiveRecord::Migration
  def self.up
    change_table :radiostations do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :radiostations, :logo
  end
end
