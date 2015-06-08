class Curso < ActiveRecord::Base
  belongs_to (:idioma)
  has_many(:instituicaoCursos)
  has_many(:areas)
end
