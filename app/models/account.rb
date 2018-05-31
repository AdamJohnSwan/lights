class Account < ApplicationRecord
	has_many :sounds

	before_create { generate_token(:auth_token) }

	def generate_token(column)
		begin
			self[column] = SecureRandom.urlsafe_base64
		end while Account.exists?(column => self[column])
	end

end
