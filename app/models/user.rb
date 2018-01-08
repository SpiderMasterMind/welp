class User < ApplicationRecord
	has_many :reviews
	has_secure_password

	validates :full_name, presence: true
	validates :email, presence: true, format: /.+@.+\.{1}.{2,}/

end
