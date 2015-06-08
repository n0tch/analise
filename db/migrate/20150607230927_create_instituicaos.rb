class CreateInstituicaos < ActiveRecord::Migration
  def change
    create_table :instituicaos do |t|
      t.string :nome, null: false
      t.string :site, null: false
      t.boolean :flgStatus, null: false
      t.string :inseridoPor, null: false
      t.datetime :dataDeInsercao, null: false
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao

      t.timestamps null: false
    end
  end
end
