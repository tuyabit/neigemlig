class UserjuudjdlsController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @userjuudjdl = @user.userjuudjdls.find(params[:id])

    @userpays = @user.userpays.where(userid: session[:user_id]).order(updated_at:'asc')

    @adminuser = User.find(1)
    @f10userpays = Userpay.where(userid: @user.id).order(updated_at:'asc')

  end

  def create
    @user = User.find(params[:user_id])
    @user.userjuudjdls.create(userjuudjdl_params)
    redirect_to user_userjuuds_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userjuudjdl = @user.userjuudjdls.find(params[:id])
    @userjuudjdl.destroy
    redirect_to user_userjuuds_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @userjuudjdl = @user.userjuudjdls.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userjuudjdl = @user.userjuudjdls.find(params[:id])
    if @userjuudjdl.update(userjuudjdl_params)
      redirect_to user_userjuudjdl_path(@user,@userjuudjdl)
    else
      render 'edit'
    end
  end

  private
    def userjuudjdl_params
      params.require(:userjuudjdl).permit(:jname, :jtxt, :jyamar, :jyaah, :jymrdt, :june, :junit, :jrotate)
    end

end
