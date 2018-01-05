require 'rails_helper'

describe Review do

	it { should belong_to(:business) }
	it { should belong_to(:user) }
	it { should validate_presence_of(:body) }
	it { should validate_presence_of(:rating) }

end
