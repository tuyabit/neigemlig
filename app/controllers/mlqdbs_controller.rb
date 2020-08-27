class MlqdbsController < ApplicationController

  def index
    @mlqdbs = Mlqdb.mlqdbs.all.order(created_at:'asc')
  end

  def show
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @user.mlqdbs.create(mlqdb_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:id])
    @mlqdb.destroy
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @mlqdb = @user.mlqdbs.find(params[:id])
    if @mlqdb.update(mlqdb_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def mlqdb_params
      params.require(:mlqdb).permit(:a1, :f1, :a2, :f2, :a9, :f9)
    end

end
