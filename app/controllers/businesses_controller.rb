class BusinessesController < ApplicationController

	def recent
		@businesses = Business.first(10)
	end

end
