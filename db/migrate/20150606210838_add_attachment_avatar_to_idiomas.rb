class AddAttachmentAvatarToIdiomas < ActiveRecord::Migration
  def self.up
    change_table :idiomas do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :idiomas, :avatar
  end
end
