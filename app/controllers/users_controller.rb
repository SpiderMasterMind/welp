class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(message_params)
		if @user.save
			flash[:success] = "Your sign-up has been processed!"
			redirect_to sign_in_path
		else
			render 'new'
			flash.now[:notice] = "There is a problem with the entered info."
		end
	end

	private

	def message_params
		params.require(:user).permit(:email, :password, :full_name)
	end
end
