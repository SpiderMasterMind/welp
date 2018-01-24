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

	describe "POST new", type: :request do
    context "with valid credentials" do
      it "adds the signed in user id into the session cookie" do
        user = Fabricate(:user)
        post '/sessions', params: { email: user.email, password: user.password }
        expect(session[:user_id]).to eq(user.id)
      end

      it "redirects to the home page" do
        user = Fabricate(:user)
        post '/sessions', params: { email: user.email, password: user.password }
        expect(response).to redirect_to home_path
      end

      it "renders a sign-in success notice" do
        user = Fabricate(:user)
        post '/sessions', params: { email: user.email, password: user.password }
        expect(flash[:notice]).to_not be_blank
      end
    end

    context "with invalid credentials" do
      it "doesn't add the credentials to the session cookie" do
        user = Fabricate(:user)
        post '/sessions', params: { email: user.email, password: user.password + "xyz" }
        expect(session[:user_id]).to_not eq(user.id)
      end

      it "renders the new session template (sign in page)"
      it "render a sign-in failure notice"
    end

	end

	describe "GET destroy" do
    context "when a user has signed in" do
      it "removes the signed in user's credentials from the session cookie"
      it "redirects to the home page"
      it "renders an informative 'signed-out' notice"
    end

    context "when a user has not signed in"

	end

end
