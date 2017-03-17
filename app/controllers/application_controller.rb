class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_game, :current_user, :current_show
  
  def current_game
    @current_game = Game.first
  end
  
  def current_user
    @current_user = User.find_by(email: session[:email])
  end
  
  def current_show
    @current_show = Show.first
  end
  
end
