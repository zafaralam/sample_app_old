require 'spec_helper'

describe "Static pages" do

  describe "Home pages" do

    it "should work the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the right tile" do
      visit '/static_pages/home'
      page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help Page" do
   it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
   end
   it "should have the right tile" do
      visit '/static_pages/help'
      page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the right tile" do
      visit '/static_pages/about'
      page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App | About")
    end
  end
end
