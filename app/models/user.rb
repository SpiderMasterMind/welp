class User < ApplicationRecord
	has_many :reviews

	validates :full_name, presence: true
	validates :email, presence: true
	validates :password, presence: true

end
