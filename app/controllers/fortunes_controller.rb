class FortunesController < ApplicationController
  def home
	  @fortune = Fortune.offset(rand(Fortune.count)).first
  end

  def index
    @fortunes = Fortune.all
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