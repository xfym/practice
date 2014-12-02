require 'spec_helper'

describe "StaticPages" do

  	describe "Home page" do

    	it "should have the content 'train'" do
	      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
	      #get static_pages_index_path
	      #response.status.should be(200)
	      visit '/static_pages/home'
	      expect(page).to have_content('train')
  		end

  		it "should have the title 'Home'" do
  			visit '/static_pages/home'
  			expect(page).to have_title("Train | Home")
  		end
  	end

  	describe "Help page" do

  		it "should have the content 'Help'" do
  			visit '/static_pages/help'
  			expect(page).to have_content('Help')
    	end

    	it "should have the title 'Help'" do
    		visit '/static_pages/help'
    		expect(page).to have_title("Train | Help")
    	end
  	end

  	describe "About page" do

  		it "should have the content 'About Us'" do
  			visit '/static_pages/about'
  			expect(page).to have_content('About Us')
  		end

  		it "should have the title 'About Us'" do
  			visit '/static_pages/about'
  			expect(page).to have_title("Train | About Us")
  		end
  	end
end