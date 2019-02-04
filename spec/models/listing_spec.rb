require 'rails_helper'

RSpec.describe Listing, type: :model do

  before(:each) do
		@listing = FactoryBot.create(:listing)
  end

  it "has a valid factory" do
    expect(build(:Listing)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@listing).to be_a(Listing)
    end
    describe "#available_beds" do
      it { expect(@listing).to validate_presence_of(:available_beds) }
      it { expect(@listing.available_beds).to be_a(Integer).and be > 0 }
		end
    describe "#price" do
      it { expect(@listing).to validate_presence_of(:price) }
      it { expect(@listing.price).to be_a(Integer).and be > 0 }
		end
    describe "#description" do
      it { expect(@listing).to validate_presence_of(:description)}
      it { expect(@listing.description.length).to be > 140 }
		end
    describe "#welcome_message" do
      it { expect(@listing).to validate_presence_of(:welcome_message) }
		end
	end

  context "associations" do
    # vérifie que le logement a plusieurs réservations
    # vérifie que le logement appartient à une ville
    # vérifie que le logement appartient bien à un admin qui est un User en nom de classe
  end

  context "public instance methods" do
    describe "#overlaping_reservation" do
      # vérifie que le listing a bien une méthode d'instance nommée overlaping_reservation?
      # vérifie que la méthode marche bien
    end
  end


end
