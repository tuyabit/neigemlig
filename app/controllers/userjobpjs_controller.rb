class UserjobpjsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjob.userjobpjs.create(userjobpj_params)
    redirect_to user_userjob_path(@user,@userjob)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:id])
    @userjobpj.destroy
    redirect_to user_userjob_path(@user,@userjob)
  end

  def edit
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:id])
    if @userjobpj.update(userjobpj_params)
      redirect_to user_userjob_path(@user,@userjob)
    else
      render 'edit'
    end
  end

  private
    def userjobpj_params
      params.require(:userjobpj).permit(:name, :from, :count, :une, :unit, :startdate, :enddate)
    end

end
