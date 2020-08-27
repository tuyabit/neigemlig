class UsershopimgsController < ApplicationController

    def create
      @user = User.find(params[:user_id])
      @usershop = @user.usershops.find(params[:usershop_id])
      @usershop.usershopimgs.create(usershopimg_params)
      redirect_to user_usershop_path(@user,@usershop)
    end

    def destroy
      @user = User.find(params[:user_id])
      @usershop = @user.usershops.find(params[:usershop_id])
      @usershopimg = @usershop.usershopimgs.find(params[:id])
      @usershopimg.destroy
      redirect_to user_usershop_path(@user,@usershop)
    end

    def edit
      @user = User.find(params[:user_id])
      @usershop = @user.usershops.find(params[:usershop_id])
      @usershopimg = @usershop.usershopimgs.find(params[:id])
    end

    def update
      @user = User.find(params[:user_id])
      @usershop = @user.usershops.find(params[:usershop_id])
      @usershopimg = @usershop.usershopimgs.find(params[:id])
      if @usershopimg.update(usershopimg_params)
        redirect_to user_usershop_path(@user,@usershop)
      else
        render 'edit'
      end
    end

    private
      def usershopimg_params
        params.require(:usershopimg).permit(:name, :picture)
      end
end
