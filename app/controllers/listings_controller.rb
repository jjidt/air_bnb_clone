class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      respond_to do |format|
        format.html { redirect_to listings_url }
        format.js
      end
    end
  end

private

  def listing_params
    params.require(:listing).permit(:description, :location, :price, :available)
  end
end
