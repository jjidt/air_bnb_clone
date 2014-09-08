class ListingsController < ApplicationController
  def index
    @listings = Listing.all.order("listings.created_at desc")
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.new(listing_params)
    if @listing.save
      flash[:notice] = "Listing saved"
      respond_to do |format|
        format.html { redirect_to listings_url }
        format.js
      end
    else
      flash[:alert] = "Incomplete information, please try again"
      redirect_to listings_path
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

  def show
    @listing = Listing.find(params[:id])
    @comments = @listing.comments.order("comments.created_at desc")
  end

private

  def listing_params
    params.require(:listing).permit(:description, :location, :price, :available, :photo)
  end
end
