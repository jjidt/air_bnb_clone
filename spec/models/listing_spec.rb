require 'rails_helper'

describe Listing do
  it {should validate_presence_of :description}
  it {should validate_presence_of :location}
  it {should validate_presence_of :price}
  it {should validate_presence_of :available}

  it {should belong_to :user}
end
