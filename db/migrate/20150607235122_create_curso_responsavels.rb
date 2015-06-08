class CreateCursoResponsavels < ActiveRecord::Migration
  def change
    create_table :curso_responsavels do |t|
      t.references :idioma, index: true, foreign_key: true
      t.string :inseridoPor, null: false
      t.datetime :dataDeInsercao, null: false
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao

      t.timestamps null: false
    end
  end
end
