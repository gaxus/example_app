require 'spec_helper'
describe "Static pages" do

describe "Home page" do
	it "should have the h1 'Example App'" do
		visit '/static_pages/home'
		page.should have_selector('h1', :text => 'Example App')
	end

	it "should have the title 'Home'" do
		visit '/static_pages/home'
		page.should have_selector('title', :text => "Ruby on Rails Tutorial Example App | Home")
	end
end

describe "Help page" do
  it "should have the content 'Help'" do
    visit '/static_pages/help'
    page.should have_content('Help')
  end
  it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
          :text => "Ruby on Rails Tutorial Example App | Help")
  end
end

describe "About page" do
	it "should have the content 'About'" do
		visit '/static_pages/about'
		page.should have_content('About')
	end
	it "should have the title 'About'" do
      		visit '/static_pages/about'
      		page.should have_selector('title',
          		:text => "Ruby on Rails Tutorial Example App | About")
    	end
end
end


