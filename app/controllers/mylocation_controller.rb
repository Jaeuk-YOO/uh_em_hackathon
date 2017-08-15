class MylocationController < ApplicationController
  before_action :authenticate_user!
  def create
    if UserLocation.where(user_id: current_user.id).take.nil?
      u = UserLocation.new
      u.user_id = current_user.id
      u.location_x = params[:location_x]
      u.location_y = params[:location_y]
      u.location_address = params[:location_address]
      u.save
    else
      u = UserLocation.where(user_id: current_user.id).take
      u.user_id = current_user.id
      u.location_x = params[:location_x]
      u.location_y = params[:location_y]
      u.location_address = params[:location_address]
      u.save
    end
  end

end
