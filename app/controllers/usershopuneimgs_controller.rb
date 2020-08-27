class UsershopuneimgsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:usershopune_id])
    @usershopune.usershopuneimgs.create(usershopuneimg_params)
    redirect_to user_usershop_path(@user,@usershop)
  end

  def destroy
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:usershopune_id])
    @usershopuneimg = @usershopune.usershopuneimgs.find(params[:id])
    @usershopuneimg.destroy
    redirect_to user_usershop_path(@user,@usershop)
  end

  def edit
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:usershopune_id])
    @usershopuneimg = @usershopune.usershopuneimgs.find(params[:id])

    @usershops = Usershop.all.order(updated_at:'desc')

  end

  def update
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:usershopune_id])
    @usershopuneimg = @usershopune.usershopuneimgs.find(params[:id])
    if @usershopuneimg.update(usershopuneimg_params)
      redirect_to user_usershop_path(@user,@usershop)
    else
      render 'edit'
    end
  end

  private
    def usershopuneimg_params
      params.require(:usershopuneimg).permit(:name, :picture)
    end
end
