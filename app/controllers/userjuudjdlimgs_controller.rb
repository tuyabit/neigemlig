class UserjuudjdlimgsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @userjuudjdl = @user.userjuudjdls.find(params[:userjuudjdl_id])
    @userjuudjdl.userjuudjdlimgs.create(userjuudjdlimg_params)
    redirect_to user_userjuudjdl_path(@user,@userjuudjdl)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userjuudjdl = @user.userjuudjdls.find(params[:userjuudjdl_id])
    @userjuudjdlimg = @userjuudjdl.userjuudjdlimgs.find(params[:id])
    @userjuudjdlimg.destroy
    redirect_to user_userjuudjdl_path(@user,@userjuudjdl)
  end

  def edit
    @user = User.find(params[:user_id])
    @userjuudjdl = @user.userjuudjdls.find(params[:userjuudjdl_id])
    @userjuudjdlimg = @userjuudjdl.userjuudjdlimgs.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userjuudjdl = @user.userjuudjdls.find(params[:userjuudjdl_id])
    @userjuudjdlimg = @userjuudjdl.userjuudjdlimgs.find(params[:id])
    if @userjuudjdlimg.update(userjuudjdlimg_params)
      redirect_to user_userjuudjdl_path(@user,@userjuudjdl)
    else
      render 'edit'
    end
  end

  private
    def userjuudjdlimg_params
      params.require(:userjuudjdlimg).permit(:name, :picture)
    end

end
