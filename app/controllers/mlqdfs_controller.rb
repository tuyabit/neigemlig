class MlqdfsController < ApplicationController

  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
      @mlqdfs = @user.mlqdfs.all.order(updated_at:'asc')

      @allmlqdfs = Mlqdf.all.order(updated_at:'asc')
    end
    @users = User.all
  end

  def show
    @user = User.find(params[:user_id])
    @mlqdf = @user.mlqdfs.find(params[:id])
    @mlqdfchats = @mlqdf.mlqdfchats.all
  end

  def create
    @user = User.find(params[:user_id])
    @user.mlqdfs.create(mlqdf_params)
    redirect_to user_mlqdfs_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @mlqdf = @user.mlqdfs.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @mlqdf = @user.mlqdfs.find(params[:id])
    if @mlqdf.update(mlqdf_params)
      redirect_to user_mlqdf_path(@user,@mlqdf)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @mlqdf = @user.mlqdfs.find(params[:id])
    @mlqdf.destroy
    redirect_to user_mlqdfs_path(@user)
  end

  private
    def mlqdf_params
      params.require(:mlqdf).permit(:a1, :f1, :a2, :a3, :a4, :a5)
    end

end
