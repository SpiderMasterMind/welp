require 'rails_helper'

describe SessionsController do

	describe "GET new" do
		it "renders the new session template page for unauthenticated users" do
			get :new
			expect(response).to render_template('new')
		end

		it "redirects to the home page for authenticated users" do
			session[:user_id] = Fabricate(:user).id
			get :new
			expect(response).to redirect_to home_path
		end

	end

	describe "POST new" do

	end

	describe "GET destroy" do

	end

end
