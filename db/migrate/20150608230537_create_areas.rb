class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.references :curso, index: true, foreign_key: true
      t.string :nome, null: false
      t.boolean :flgStatus, null: false
      t.string :inseridoPor, null: false
      t.datetime :dataDeInsercao, null: false
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao

      t.timestamps null: false
    end
  end
end
