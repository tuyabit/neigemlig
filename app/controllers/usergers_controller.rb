class UsergersController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.usergers.create(userger_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userger = @user.usergers.find(params[:id])
    @userger.destroy
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @userger = @user.usergers.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userger = @user.usergers.find(params[:id])
    if @userger.update(userger_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def userger_params
      params.require(:userger).permit(:name, :faymly, :hed, :userid, :yamr)
    end
end
