class FortunesController < ApplicationController
  def home
	  @fortune = Fortune.offset(rand(Fortune.count)).first
    @cookie_count = Fortune.count
  end

  def index
    @fortunes = Fortune.all
  end

  def create
  	fortune = Fortune.create fortune_params
    if fortune.twitter_handle[0] == "@"
      fortune.update(:twitter_handle => fortune.clean_twitter_handle)
    end
    redirect_to root_path
  end

  def new
  	@fortune = Fortune.new
  end

  def show
  	@fortune = Fortune.find params[:id]
    @tweet = @fortune.tweet
  end

  private
  def fortune_params
    params.require(:fortune).permit(:description, :name, :age, :city, :country, :twitter_handle)
  end

  def allow_iframe
    response.headers.except! 'X-Frame-Options'
  end
end