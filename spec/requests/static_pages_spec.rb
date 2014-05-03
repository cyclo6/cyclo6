require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Cyclo6'" do
      visit root_path
      expect(page).to have_content('Cyclo6')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Cyclo6")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit about_path
      expect(page).to have_title("Cyclo6: About")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Cyclo6: Contact")
    end
  end
end