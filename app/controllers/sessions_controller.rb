class SessionsController < ApplicationController

	def new
		redirect_to home_path if current_user
	end



end
