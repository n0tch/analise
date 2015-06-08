class Idioma < ActiveRecord::Base

	has_many(:idioma_avisos)
	has_many(:classe_gramaticals)
	has_many(:cursos)

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "200x200>" }
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
