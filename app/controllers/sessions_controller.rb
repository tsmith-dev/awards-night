class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.find_by(email: params[:email])
    if @user
      session[:email] = params[:email]
      redirect_to dashboard_url(@user)
    else
      redirect_to login_url, notice: "Email/Password Invalid. Sign up instead?"
    end
  end
  
  def destroy
    session[:email] = nil
    redirect_to root_url, notice: "You have signed out."
  end

end
