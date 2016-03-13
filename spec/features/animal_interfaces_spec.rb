require 'rails_helper'

RSpec.feature "AnimalInterfaces", type: :feature do
  describe "As a ranger on the home page" do
    it "As a ranger I can go to the homepage" do
      visit "/"
      expect(page).to have_content("Welcome to Wildlife Tracker")
    end
  end
end
