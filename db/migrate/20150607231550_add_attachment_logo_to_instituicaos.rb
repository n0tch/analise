class AddAttachmentLogoToInstituicaos < ActiveRecord::Migration
  def self.up
    change_table :instituicaos do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :instituicaos, :logo
  end
end
