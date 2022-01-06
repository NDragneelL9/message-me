class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'Successfully logged in'
      redirect_to root_path
    else
      flash.now[:error] = 'Something wrong with provided credentials'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out'
    redirect_to signin_path
  end

  private

  def session_params; end
end
