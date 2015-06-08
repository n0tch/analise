class InstituicaoCurso < ActiveRecord::Base
  belongs_to :instituicao
  belongs_to :curso
end
