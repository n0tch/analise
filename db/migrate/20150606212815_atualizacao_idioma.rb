class AtualizacaoIdioma < ActiveRecord::Migration
  def change
  	add_column :idiomas, :atualizadoPor, :string
  	add_column :idiomas, :dataDeAtualizacao, :datetime
  end
end
