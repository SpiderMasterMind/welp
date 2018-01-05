require 'rails_helper'

describe Business do

	it { should have_many(:reviews) }
	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:address) }
	it { should validate_presence_of(:city) }
	it { should validate_presence_of(:postcode) }

end
