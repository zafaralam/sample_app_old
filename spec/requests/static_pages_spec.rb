require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home pages" do

    it "should have the right tile" do
      visit '/static_pages/home'
      page.should have_selector('title',:text => "#{base_title}")
    end

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1',:text => "Sample App")
    end

    it "should not have a custome page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title',:text=>'| Home')
    end
  end

  describe "Help Page" do
   it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
   end
   it "should have the right tile" do
      visit '/static_pages/help'
      page.should have_selector('title',:text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the right tile" do
      visit '/static_pages/about'
      page.should have_selector('title',:text => "#{base_title} | About")
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end

    it "should have the right tile" do
      visit '/static_pages/contact'
      page.should have_selector('title',:text => "#{base_title} | Contact")
    end
  end
end
