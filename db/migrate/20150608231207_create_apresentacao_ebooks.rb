class CreateApresentacaoEbooks < ActiveRecord::Migration
  def change
    create_table :apresentacao_ebooks do |t|
      t.string :conteudo, null: false
      t.string :inseridoPor, null: false
      t.datetime :dataDeInsercao, null: false
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao

      t.timestamps null: false
    end
  end
end
