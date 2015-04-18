require "rails_helper"

RSpec.describe AdventuresController, type: :controller do
	
	describe "#create" do
		describe "when save successful" do 
			it "redirects to #show" do
				post :create, adventure: {name: "Test Name"} 
				expect(response.code).to eq("302")
			end 
		end

		describe "when save fails" do
			let(:adventure_double){double("fake adventure", save: false)}
			before do
				allow(Adventure).to receive(:new).and_return(adventure_double)
			end
			it "renders #new" do
				post :create, adventure: {name: "Test Name"}
				expect(response).to render_template(:new)
			end
		end

	end

end