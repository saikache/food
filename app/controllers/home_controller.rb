class HomeController < ApplicationController
  def index

  	@menus = Restaurant.first.menus.includes(:main_items)

    respond_to do |format|
      format.html# { render :edit }
      format.json { render json: @menus.to_json, status: :unprocessable_entity }
    end


  end

  def index_back
    @menus = Restaurant.first.menus.includes(:main_items)
  end


  def menus
  	@menus = Restaurant.first.menus.includes(:main_items)
  	render json: @menus.to_json
  end
end
