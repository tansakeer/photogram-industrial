class UsersController < ApplicationController
  def show   
    @user = User.find_by!(username: params.fetch(:username))
  end

  def following
    #scope :accepted, -> { where(status: "accepted" )}
    #@user = User.FollowRequest.find_by!(username: params.fetch(:username))
    
  end
end
