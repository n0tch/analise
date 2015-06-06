class TrocarTipoMensagem < ActiveRecord::Migration
  def change
  	change_column :avisos, :mensagem, :text
  end
end
