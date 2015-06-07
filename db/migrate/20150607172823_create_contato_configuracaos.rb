class CreateContatoConfiguracaos < ActiveRecord::Migration
  def change
    create_table :contato_configuracaos do |t|
      t.string :smtp, null: false
      t.integer :porta
      t.string :host
      t.string :email
      t.string :senha
      t.string :inseridoPor
      t.datetime :dataDeInsercao
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao

      t.timestamps null: false
    end
  end
end
