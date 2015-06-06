class IdiomaAviso < ActiveRecord::Base
  belongs_to :idioma
  belongs_to :aviso
end
