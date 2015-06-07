class DropApTipoContato < ActiveRecord::Migration
  def change
    drop_table :ap_tipo_contatos    
  end
end
