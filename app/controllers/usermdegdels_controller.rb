class UsermdegdelsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.usermdegdels.create(usermdegdel_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @usermdegdel = @user.usermdegdels.find(params[:id])
    @usermdegdel.destroy
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @usermdegdel = @user.usermdegdels.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @usermdegdel = @user.usermdegdels.find(params[:id])
    if @usermdegdel.update(usermdegdel_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def usermdegdel_params
      params.require(:usermdegdel).permit(:name, :ga1, :ga2, :f4, :f5)
    end

end
