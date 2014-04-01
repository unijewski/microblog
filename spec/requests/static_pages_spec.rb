require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Microblog" }

  describe "Home page" do
    it "should have the content 'Microblog'" do
      visit '/static_pages/home'
      expect(page).to have_content('Microblog')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Home » #{base_title}")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
		  visit '/static_pages/help'
      expect(page).to have_content('Help')
  	end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Help » #{base_title}")
    end
  end

  describe "About page" do
    it "should have the content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("About us » #{base_title}")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact » #{base_title}")
    end
  end

end