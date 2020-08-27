class MlqdcsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user.mlqdcs.create(mlqdc_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @mlqdc = @user.mlqdcs.find(params[:id])
    @mlqdc.destroy
    redirect_to user_path(@user)
  end

  private
    def mlqdc_params
      params.require(:mlqdc).permit(:a1,:f1)
    end

end
