require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Cyclo6'" do
      visit '/static_pages/home'
      expect(page).to have_content('Cyclo6')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Cyclo6")
    end
    
    it "should not have a custom page title" do
         visit '/static_pages/home'
         expect(page).not_to have_title('| Home')
    end
  end
  
  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('organic chemistry')
    end
      
    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("Cyclo6: About")
    end
  end
end