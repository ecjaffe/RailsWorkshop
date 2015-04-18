require "rails_helper"

describe Adventure do 
	it "has a name" do
		adventure = Adventure.new(name: 'Lake Tahoe')
		expect(adventure).to be_valid
	end
end