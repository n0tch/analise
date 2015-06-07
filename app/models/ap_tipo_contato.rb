class ApTipoContato < ActiveRecord::Base
	has_many(:contato_email)
end
