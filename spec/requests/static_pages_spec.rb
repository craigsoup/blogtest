require 'spec_helper'

describe "StaticPages" do

		describe "Home page" do
				
				it "should have the title 'Home'" do
						visit '/static_pages/home'
						page.should have_selector('title', 
																:text => 'Home')
				end

				it "should have the content 'blogtest'" do
						visit '/static_pages/home'
						page.should have_content('blogtest')
				end
		end

		describe "Help page" do

				it "should have the title 'Help'" do
						visit '/static_pages/help'
						page.should have_selector('title',
																:text => 'Help')
				end

				it "should have the content 'blogtest help'" do
						visit '/static_pages/help'
						page.should have_content('blogtest help')
				end
		end

		describe "About page" do

				it "should have the title 'About'" do
						visit '/static_pages/about'
						page.should have_selector('title',
																:text => 'About')
				end

				it "should have the content 'about blogtest'" do
						visit '/static_pages/about'
						page.should have_content('about blogtest')
				end
		end
end
