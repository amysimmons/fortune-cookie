class FortunesController < ApplicationController
  def home
  	@fortune_cookie_count = Fortune.count
	@fortune = Fortune.offset(rand(Fortune.count)).first
  end

  def create
  	fortune = Fortune.create fortune_params
    redirect_to root_path
  end

  def new
  	@fortune = Fortune.new
  end

  def show
  	@fortune = Fortune.find params[:id]
  end

  private
  def fortune_params
    params.require(:fortune).permit(:description, :name, :age, :city, :country, :url)
  end
end