class SessionsController < ApplicationController

  def new
    session[:user_id] = nil
    session[:user_fname] = nil
    session[:user_funame] = nil

    @user = User.new
    @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_fname] = user.fname
      session[:user_funame] = user.nickname

      redirect_to motds_path
    else
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    session.delete(:user_fname)
    session.delete(:user_funame)

    @current_user = nil
    redirect_to login_path
  end


end
