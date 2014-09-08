require 'rails_helper'

describe 'adding a listing' do
  before { user = FactoryGirl.create(:user) }
  it 'opens a form for creating a listing' do
    visit '/'
    click_link "new_link"
    expect(page).to have_content 'Description'
  end
end
