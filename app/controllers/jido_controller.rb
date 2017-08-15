class JidoController < ApplicationController
    before_action :authenticate_user!
  def maps

  end

  def search
    if user_signed_in?
      unless UserLocation.where(user_id: current_user.id).take.nil?
        @search_location = UserLocation.where(user_id: current_user.id).take.location_address
      end
    else
    end
  end
end
