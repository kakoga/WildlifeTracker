require 'rails_helper'

# story 1
RSpec.feature "AnimalInterfaces", type: :feature do
  describe "As a ranger on the homepage" do
    it "I can go to the homepage" do
      visit "/"
      expect(page).to have_content("Welcome to Wildlife Tracker")
    end

    # story 2
    it "I can create an animal and save it in the database from the home page" do
      visit "/"
      fill_in 'Name', with: 'Monkey'
      click_button 'Save'
      # means: there should be a record and it should be of class Species
      expect(Species.first).to be_a(Species)
      #test fails because there is no model or table.
    end

    # story 3
    # it "I can view all records" do
    #   visit "/"
    #   expect(page).to have_content("View all records below")
    #   expect(page).to have_content("Species Name")
    #   expect(page).to have_content("Created")
    # end
    # Story: As a ranger I can update a species in the database.

    # it "I can edit a species" do
    #   visit "/"
    #   click_on 'Edit Record'
    #   expect(page).to have_content("Wildlife Tracker")
    #   expect(page).to have_content("Edit the selected record below")
    # end

    # it "in the database" do
    #   visit "species/edit"




    # end
  end
end
