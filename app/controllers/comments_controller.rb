class CommentsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @comment = Comment.new
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @comment = @listing.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to tasks_url }
        format.js
      end
    end
  end

private
  def comment_params
    params.require(:comment).permit(:content, :rating)
  end
end
