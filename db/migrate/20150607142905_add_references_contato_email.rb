class AddReferencesContatoEmail < ActiveRecord::Migration
  def change
  	add_column :contato_emails, :ap_tipo_contato_id, :integer
    add_index :contato_emails, :ap_tipo_contato_id
  end
end
