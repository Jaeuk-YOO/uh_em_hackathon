class ParseController < ApplicationController
  before_action :authenticate_user!
  def parse_view
    @pp = ParsePlace.all
  end

  def search_create
    if UserSearch.where(user_id: current_user.id).where(place_id: params[:place_id]).take.nil?
      us = UserSearch.new
      us.user_id = current_user.id
      us.email = current_user.email
      us.place_name = params[:place_name]
      us.address_name = params[:address_name]
      us.place_id = params[:place_id]
      us.place_x = params[:place_x]
      us.place_y = params[:place_y]
      us.place_phone = params[:place_phone]
      us.save

      #메뉴정보 저장
      require 'open-uri'
      require 'json'
      doc = Nokogiri::HTML(open("http://place.map.daum.net/main/v/"+params[:place_id]), nil, 'UTF-8')
      get_info = JSON.parse(doc.css('p').inner_html)
      get_info.each do |key, value|
        if key.include? "menuInfo"
            pp = ParsePlace.new
            pp.menuCount = value.values_at("menucount").pop
            pp.menuList = value.values_at("menuList").flatten
            pp.menuboardphotourlList = value.values_at("menuboardphotourlList").flatten
            pp.save
        end
      end
    end
    #    us = Hash.new
    #    us['user_id'] = current_user.id
    #    us['email'] = current_user.email
    #    us['place_name'] = params[:place_name]
    #    us['address_name'] = params[:address_name]
    #    us['place_id'] = params[:place_id]
    #    us['place_x'] = params[:place_x]
    #    us['place_y'] = params[:place_y]
    #    us['place_phone'] = params[:place_phone]

  end

end
