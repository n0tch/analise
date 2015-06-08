class AddDataDeInsercao < ActiveRecord::Migration
  def change
  	add_column :cursos, :dataDeInsercao, :datetime
  end
end
