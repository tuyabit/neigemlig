class UsershopunejahsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:usershopune_id])
    @usershopune.usershopunejahs.create(usershopunejah_params)
    redirect_to user_usershop_path(@user,@usershop)
  end

  def destroy
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:usershopune_id])
    @usershopunejah = @usershopune.usershopunejahs.find(params[:id])
    @usershopunejah.destroy
    redirect_to user_usershop_path(@user,@usershop)
  end

  def edit
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:usershopune_id])
    @usershopunejah = @usershopune.usershopunejahs.find(params[:id])

    @usershops = Usershop.all.order(updated_at:'desc')

  end

  def update
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:usershop_id])
    @usershopune = @usershop.usershopunes.find(params[:usershopune_id])
    @usershopunejah = @usershopune.usershopunejahs.find(params[:id])
    if @usershopunejah.update(usershopunejah_params)
      redirect_to user_usershop_path(@user,@usershop)
    else
      render 'edit'
    end
  end

  private
    def usershopunejah_params
      params.require(:usershopunejah).permit(:name, :count, :userid, :uname, :ujdt, :from, :name1, :dune, :une1, :bay1, :jah1, :unit1, :une3, :une2, :unit2, :get1dt, :get2dt)
    end


end
