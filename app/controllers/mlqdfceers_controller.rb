class MlqdfceersController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:id])
    @mlqdfceers = @mlqdb.mlqdfceers.all
  end

  def show
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdfceer = @mlqdb.mlqdfceers.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdb.mlqdfceers.create(mlqdfceer_params)
    redirect_to user_mlqdb_path(@user,@mlqdb)
  end

  def edit
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdfceer = @mlqdb.mlqdfceers.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdfceer = @mlqdb.mlqdfceers.find(params[:id])
    if @mlqdfceer.update(mlqdfceer_params)
      redirect_to user_mlqdb_path(@user,@mlqdb)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:mlqdb_id])
    @mlqdfceer = @mlqdb.mlqdfceers.find(params[:id])
    @mlqdfceer.destroy
    redirect_to user_mlqdb_path(@user,@mlqdb)
  end

  private
    def mlqdfceer_params
      params.require(:mlqdfceer).permit(:text1)
    end

end
