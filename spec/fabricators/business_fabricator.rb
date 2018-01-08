Fabricator(:business) do 
	title { Faker::Company.name }
	address { Faker::Address.street_name }
	city { Faker::Address.city }
	postcode { Faker::Address.postcode }
end
