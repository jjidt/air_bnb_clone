require 'rails_helper'

describe 'adding a listing' do
  before do
    user = FactoryGirl.create(:user)
    visit '/users/login'
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button ''
  end

  it 'opens a form for creating a listing' do
    visit '/'
    click_link "new_link"
    expect(page).to have_content 'Description'
  end

  it 'submits the form to create a new listing' do
    visit '/'
    click_link "new_link"
    fill_in "listing_description", with: "Cargo!"
    fill_in "listing_location", with: "Anywhere, USA"
    fill_in "listing_price", with: "50"
    click_button "add-new-listing"
    expect(page).to have_content 'Cargo!'
  end
end
