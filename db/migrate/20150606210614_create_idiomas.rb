class CreateIdiomas < ActiveRecord::Migration
  def change
    create_table :idiomas do |t|
      t.string :nome, 				null: false
      t.boolean :flgStatus,			null: false
      t.string :inseridoPor,		null: false
      t.datetime :dataDeInsercao,	null: false

      t.timestamps null: false
    end
  end
end
