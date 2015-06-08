class CreateInstituicaoCursos < ActiveRecord::Migration
  def change
    create_table :instituicao_cursos do |t|
      t.references :instituicao, index: true, foreign_key: true
      t.references :curso, index: true, foreign_key: true
      t.string :inseridoPor
      t.datetime :dataDeInsercao
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao

      t.timestamps null: false
    end
  end
end
