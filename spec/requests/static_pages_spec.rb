require 'spec_helper'

describe "StaticPages" do
    # have_title check the content of the title tag.
    # need not be the full sentence, even the substring "Home" will do the job
    describe "Home page" do

      it "should have the content 'My ruby app'" do
          visit '/static_pages/home'
          expect(page).to have_content('My ruby app')
      end
      
      it "should have the title 'Home'" do
          visit '/static_pages/home'
          expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
      end
  end

  describe "Help page" do

      it "should have the content 'Help'" do
          visit '/static_pages/help'
          expect(page).to have_content('Help')
      end
      
      it "should have the title 'Help'" do
          visit '/static_pages/help'
          expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
      end
  end

  describe "About page" do

      it "should have the content 'About Us'" do
          visit '/static_pages/about'
          expect(page).to have_content('About Us')
      end

      it "should have the title 'About Us'" do
          visit '/static_pages/about'
          expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
      end
  end

end 
