require 'rails_helper'

RSpec.feature "Books", type: :feature do
  context "create new user" do
  	scenario "should be successfill" do 
  		visit root_path
  			click_button 'New Book'
  			within('form[id="new_book"]') do
  				fill_in 'Name', with: 'capy'
  				fill_in 'Category', with: 'web'
  				fill_in 'Price', with: 20
  				fill_in 'Isbn', with: 22
  			end
  			click_button 'Save'
  	end
  end
end
