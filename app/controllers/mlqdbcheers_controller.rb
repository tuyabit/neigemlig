class MlqdbcheersController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:id])
    @mlqdbcheers = @mlqdb.mlqdbcheers.all
  end

  def show
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdbcheer = @mlqdb.mlqdbcheers.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdb.mlqdbcheers.create(mlqdbcheer_params)
    redirect_to user_mlqdb_path(@user,@mlqdb)
  end

  def edit
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdbcheer = @mlqdb.mlqdbcheers.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdbcheer = @mlqdb.mlqdbcheers.find(params[:id])
    if @mlqdbcheer.update(mlqdbcheer_params)
      redirect_to user_mlqdb_path(@user,@mlqdb)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdbcheer = @mlqdb.mlqdbcheers.find(params[:id])
    @mlqdbcheer.destroy
    redirect_to user_mlqdb_path(@user,@mlqdb)
  end

  private
    def mlqdbcheer_params
      params.require(:mlqdbcheer).permit(:text1)
    end

end
