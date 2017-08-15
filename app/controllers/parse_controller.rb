class ParseController < ApplicationController
  before_action :authenticate_user!
  def doc
    require 'open-uri'
    require 'json'
    doc = Nokogiri::HTML(open("http://place.map.daum.net/main/v/8018353"), nil, 'UTF-8')
    get_info = JSON.parse(doc.css('p').inner_html)
    puts get_info.class
    doc_hash = Hash.new
    doc_hash_sel = Hash.new
    doc_hash = doc

    get_info.each do |key, value|
      if key.include? "menuInfo"
        puts key
        puts value
      end
    end
    @doc_css= doc.css('p').inner_html
  end

  def search_create
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
