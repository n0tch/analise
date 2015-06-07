class ClasseGramatical < ActiveRecord::Base
  belongs_to :idioma

  validates_length_of(:sigla, :maximum => 5)
end
