require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "should have the content 'simple app'" do
      visit '/static_pages/home'
      page.should have_content('simple app')
    end
  describe "Help page" do
    it "should contain the content 'Help somebody'" do
      visit '/static_pages/help'
      page.should have_content('Help somebody')
    end
  end
  describe "about page" do
    it "should have the content 'about me'" do
      visit '/static_pages/about'
      page.should have_selector('h1',text:'about me')
    end
  end
  end
end
