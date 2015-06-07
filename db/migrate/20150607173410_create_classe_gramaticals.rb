class CreateClasseGramaticals < ActiveRecord::Migration
  def change
    create_table :classe_gramaticals do |t|
      t.string :nome,               null: false
      t.string :sigla,              null: false, :limit => 10
      t.boolean :flgStatus,         null: false
      t.string :inseridoPor,        null: false
      t.datetime :dataDeInsercao,   null: false
      t.string :atualizadoPor,      null: false
      t.datetime :dataDeAtualizacao
      t.references :idioma, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
