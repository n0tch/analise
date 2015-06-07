class AdicionarTituloAviso < ActiveRecord::Migration
  def change
  	add_column :avisos, :titulo, :string
  end
end
