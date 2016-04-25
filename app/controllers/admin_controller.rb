class AdminController < ApplicationController

  def index
    @items = Item.all
    @new_item = Item.new
  end

  def show
    @item = Item.find params[:id]
  end


end # End of AdminController
