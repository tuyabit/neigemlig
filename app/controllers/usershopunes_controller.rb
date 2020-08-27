class UsershopunesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershop.usershopunes.create(usershopune_params)
    redirect_to user_usershop_path(@user,@usershop)
  end

  def destroy
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:id])
    @usershopune.destroy
    redirect_to user_usershop_path(@user,@usershop)
  end

  def edit
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:id])
    if @usershopune.update(usershopune_params)
      redirect_to user_usershop_path(@user,@usershop)
    else
      render 'edit'
    end
  end

  private
    def usershopune_params
      params.require(:usershopune).permit(:name, :une1, :une2, :une3, :dune, :unit1, :unit2, :jah1,:bay1,:from)
    end

end
