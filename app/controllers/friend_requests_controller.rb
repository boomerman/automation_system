class FriendRequestsController < ApplicationController
	before_action :set_friend_request, except: [:index, :create]

  def create
    friend = User.find(params[:friend_id])
    @friend_request = current_user.friend_requests.new(friend: friend)

    if @friend_request.save
      render :show, status: :created, location: @friend_request
    else
      render json: @friend_request.errors, status: :unprocessable_entity
    end
  end
  def destroy
  @friend_request.destroy
  respond_to do |format|
      format.html { redirect_to root_url, notice: 'request was successfully destroyed.' }
end
def update
  @friend_request.accept
  head :no_content
end
  private

  def set_friend_request
    @friend_request = FriendRequest.find(params[:id])
  end
end
end


