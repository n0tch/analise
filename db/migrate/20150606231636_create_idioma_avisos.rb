class CreateIdiomaAvisos < ActiveRecord::Migration
  def change
    create_table :idioma_avisos do |t|
      t.references :idioma, index: true, foreign_key: true
      t.references :aviso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
