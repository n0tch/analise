class CreateAvisos < ActiveRecord::Migration
  def change
    create_table :avisos do |t|
      t.string :mensagem, null: false
      t.boolean :flgStatus, null: false
      t.string :inseridoPor, null: false
      t.datetime :dataDeInsercao, null: false
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao

      t.timestamps null: false
    end
  end
end
