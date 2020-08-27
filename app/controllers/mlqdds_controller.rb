class MlqddsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user.mlqdds.create(mlqdd_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @mlqdd = @user.mlqdds.find(params[:id])
    @mlqdd.destroy
    redirect_to user_path(@user)
  end

  private
    def mlqdd_params
      params.require(:mlqdd).permit(:a1, :f1)
    end

end
