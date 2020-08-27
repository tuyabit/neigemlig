class MlqdasController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user.mlqdas.create(mlqda_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @mlqda = @user.mlqdas.find(params[:id])
    @mlqda.destroy
    redirect_to user_path(@user)
  end

  private
    def mlqda_params
      params.require(:mlqda).permit(:a1, :f1, :a2, :f2, :a9, :f9)
    end

end
