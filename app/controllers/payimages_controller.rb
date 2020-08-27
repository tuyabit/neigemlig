class PayimagesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.payimages.create(payimage_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @payimage = @user.payimages.find(params[:id])
    @payimage.destroy
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @payimage = @user.payimages.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @payimage = @user.payimages.find(params[:id])
    if @payimage.update(payimage_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def payimage_params
      params.require(:payimage).permit(:name, :picture)
    end

end
