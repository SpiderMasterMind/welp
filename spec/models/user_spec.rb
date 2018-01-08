require 'rails_helper'

describe User do

	it { should have_many(:reviews) }
	it { should validate_presence_of(:full_name) }
	it { should validate_presence_of(:email) }
	
end
