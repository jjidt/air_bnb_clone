require 'rails_helper'
require 'login_helper'

describe 'adding a comment' do
  before do
    login_user
    add_listings
  end

  it 'shows the comment form' do
    visit '/'
    click_link "hot pants"
    click_link "add-comment"
    expect(page).to have_content 'Rating'
  end
end
