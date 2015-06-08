class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome, null: false
      t.boolean :flgStatus, null: false
      t.string :inseridoPor, null: false
      t.datetime :dataDeAtualizacao, null: false
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao
      t.references :idioma, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
