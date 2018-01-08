require 'rails_helper'

describe BusinessesController do
	
	describe "GET recent" do
		it "sets @reviews to 10 items when there are more than 9 reviews" do
			12.times { Fabricate(:business) }
			get :recent
			expect(assigns(:businesses).length).to eq(10)
		end

		it "sets @reviews to 1 - 9 items when there are that many reviews" do
			number = rand(1..9)
			number.times { Fabricate(:business) }
			get :recent
			expect(assigns(:businesses).length).to eq(number)
		end
		it "sets @reviews to nil when there are no reviews" do
			get :recent
			expect(assigns(:businesses).length).to eq(0)
		end
		it "orders @reviews by most recent creation date" do
			biz1 = Fabricate(:business, updated_at: "2018-01-07 19:01:00")
			biz2 = Fabricate(:business, updated_at: "2018-01-07 19:02:00")
			biz3 = Fabricate(:business, updated_at: "2018-01-07 19:00:00")
			get :recent
			expect(assigns(:businesses)).to match_array([biz2, biz1, biz3])	
		end
	end
end
