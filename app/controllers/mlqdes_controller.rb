class MlqdesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user.mlqdes.create(mlqde_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @mlqde = @user.mlqdes.find(params[:id])
    @mlqde.destroy
    redirect_to user_path(@user)
  end

  private
    def mlqde_params
      params.require(:mlqde).permit(:a1, :f1)
    end

end
