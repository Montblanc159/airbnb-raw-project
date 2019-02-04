require 'rails_helper'

RSpec.describe City, type: :model do

  before(:each) do
		@city = FactoryBot.create(:city)
  end

  it "has a valid factory" do
    expect(build(:city)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@city).to be_a(City)
    end
    describe "#name" do
      it { expect(@city).to validate_presence_of(:name) }
		end
		describe "#zip_code" do
      it { expect(@city).to validate_presence_of(:zip_code) }
      it { should validate_uniqueness_of(:zip_code) }
      # verifie différentes valeurs de zip_code qui doivent être correctes
      # vérifie différentes valeurs de zip_code qui ne doivent pas être correctes
	  end
  end

  context "associations" do
    it { expect(@city).to have_many(:listings) }
  end

end
