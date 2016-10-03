module SetPrimary
	extend ActiveSupport::Concern

	included do
		before_create :generate_primary		
	end

	protected

	def generate_primary
		self.primary = loop do
			random_token = SecureRandom.urlsafe_base64(nil, false)
			break random_token unless self.class.exists?(primary: random_token)
		end
	end
end