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

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      flash[:notice] = "Listing updated successfully"
      redirect_to listings_path
    else
      flash[:alert] = "Incomplete information, please try again"
      redirect_to :back
    end
  end

private

  def listing_params
    params.require(:listing).permit(:description, :location, :price, :available)
  end
end
