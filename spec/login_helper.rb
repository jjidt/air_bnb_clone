def login_user
  user = FactoryGirl.create(:user)
  visit '/users/login'
  fill_in 'user_email', with: user.email
  fill_in 'user_password', with: user.password
  click_button ''
end

def add_listings
  visit '/'
  Listing.create(description: "hot pants", location: "Your Town", price: "50")
  5.times do
    Listing.create(description: "#{(Random.rand * 1000).floor} pants",
                  location: "Your Town",
                  price: "10")
  end
end
