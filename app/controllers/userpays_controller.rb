class UserpaysController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.userpays.create(userpay_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userpay = @user.userpays.find(params[:id])
    @userpay.destroy
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @userpay = @user.userpays.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userpay = @user.userpays.find(params[:id])
    if @userpay.update(userpay_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def userpay_params
      params.require(:userpay).permit(:name, :unit, :picture, :f4, :f5, :f6, :f7, :f8, :f9, :f10, :userid, :uname,:type,:typeid)
    end

end
