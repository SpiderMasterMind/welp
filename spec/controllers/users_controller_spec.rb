require 'rails_helper'

describe UsersController do
	
	describe "POST create" do
		context "with valid input" do
			before do
				post :create, params: { user: Fabricate.attributes_for(:user) }
			end

			it "creates the user" do
				expect(User.count).to eq(1)
			end

			it "redirects the user to the sign-in page" do
				expect(response).to redirect_to sign_in_path
			end

			it "renders a sign-up successful message" do
				expect(flash[:success]).to be_present
			end
		end

		context "with invalid input" do
			before do
				test_user = Fabricate.attributes_for(:user, full_name: "")
				post :create, params: { user: test_user }
			end

			it "directs the user back to the new sign up form" do
				expect(response).to render_template("new")
			end

			it "renders flash error message" do
				expect(flash[:notice]).to be_present	
			end


		end
	end
end
