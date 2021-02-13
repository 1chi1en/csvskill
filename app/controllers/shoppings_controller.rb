class ShoppingsController < ApplicationController
  def index
    @shoppings = Shopping.all
  end

  def import
    Shopping.import(params[:file])
    redirect_to root_path
  end

end
