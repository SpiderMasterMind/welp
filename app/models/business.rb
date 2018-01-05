class Business < ApplicationRecord
	has_many :reviews

	validates :title, presence: true
	validates :address, presence: true
	validates :city, presence: true
	validates :postcode, presence: true
end
