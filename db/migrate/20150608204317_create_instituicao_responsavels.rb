class CreateInstituicaoResponsavels < ActiveRecord::Migration
  def change
    create_table :instituicao_responsavels do |t|
      t.references :instituicao, index: true, foreign_key: true
      t.string :nome, null: false
      t.string :inseridoPor, null: false
      t.datetime :dataDeInsercao, null: false
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao

      t.timestamps null: false
    end
  end
end
