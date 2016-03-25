require 'rails_helper'

RSpec.describe Species, type: :model do
  it "should be savable in the database" do
    # expects the the newly created species to be named 'Deer' - truthy means not nil or false
    expect(Species.create(name: 'Deer')).to be_truthy
    # expects the first record/model in the db to be of the class Species
    expect(Species.first).to be_a(Species)
    # expects the Species' first name to equal Deer
    expect(Species.first.name).to eq('Deer')
  end
end
