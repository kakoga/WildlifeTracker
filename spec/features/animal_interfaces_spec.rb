require 'rails_helper'

#story 1
RSpec.feature "AnimalInterfaces", type: :feature do
  describe "As a ranger on the home page" do
    it "I can go to the homepage" do
      visit "/"
      expect(page).to have_content("Welcome to Wildlife Tracker")
    end

    #story 2
    it "I can create an animal and save it in the database from the home page" do
      visit "/"
      fill_in 'Name', with: 'Monkey'
      click_button 'Save'
      # means: there should be a record and it should be of class Species
      expect(Species.first).to be_a(Species)
      #test fails because there is no model or table.
    end

  end
end
