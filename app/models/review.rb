class Review < ApplicationRecord
	belongs_to :business
	belongs_to :user

	validates :body, presence: true
	validates :rating, presence: true
end
